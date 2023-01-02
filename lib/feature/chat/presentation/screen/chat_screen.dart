import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

import '../../../../l10n/l10n.dart';
import '../../../../theme/theme.dart';
import '../../../common/domain/domain.dart';
import '../widget/widget.dart';

final _rand = Random();

final _isGroup = _rand.nextBool();

final _sender = User(
  id: 'senderID',
  name: 'Tomas White',
  avatarUrls: [],
);

final _me = User(
  id: 'myID',
  name: 'bytes7 bytes7',
  avatarUrls: [],
);

final _title = 'Tomas White';

final _alpha = 'qwertyuiopasdfghjklzxcvbnm';

String _randString(int length) {
  final buffer = StringBuffer();

  for (var i = 0; i < length; i++) {
    buffer.write(_alpha[_rand.nextInt(_alpha.length)]);
  }

  return buffer.toString();
}

DateTime _randDateTime() {
  return DateTime(
    _rand.nextInt(2) + 2022,
    _rand.nextInt(12) + 1,
    _rand.nextInt(28) + 1,
    _rand.nextInt(24),
    _rand.nextInt(60),
    _rand.nextInt(60),
  );
}

final _messages = List.generate(
  _rand.nextInt(10) + 15,
  (index) {
    return Message(
      id: '$index',
      chatID: 'chatID',
      sender: _rand.nextBool()
          ? _sender
          : _rand.nextBool()
              ? _me
              : null,
      text: _randString(_rand.nextInt(20) + 8),
      mediaUrls: [],
      sentAt: _randDateTime(),
      modifiedAt: _rand.nextBool() ? _randDateTime() : null,
      willBeBurntAt: _rand.nextBool() ? _randDateTime() : null,
      isRead: _rand.nextBool(),
    );
  },
);

final _messagesIndex = Map.fromEntries(
  _messages.mapIndexed((index, e) {
    return MapEntry(e.id, index);
  }),
);

final _onlineStatus = () {
  switch (_rand.nextInt(4)) {
    case 0:
      return const IsOnlineStatus();
    case 1:
      return const HiddenOnlineStatus();
    case 2:
      return LastSeenOnlineStatus(
        dateTime: DateTime(
          _rand.nextInt(2) + 2022,
          _rand.nextInt(12) + 1,
          _rand.nextInt(28) + 1,
          _rand.nextInt(24),
          _rand.nextInt(60),
          _rand.nextInt(60),
        ),
      );
    default:
      return const NoOnlineStatus();
  }
}();

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyleTX = theme.extension<ButtonStyleTX>()!;

    final l10n = context.l10n;

    final beautifiedOnlineStatus = _beautifyOnlineStatus(l10n, _onlineStatus);

    return Scaffold(
      appBar: AppBar(
        leading: Align(
          child: ElevatedButton(
            style: buttonStyleTX.filledIcon,
            onPressed: () {},
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _title,
            ),
            if (beautifiedOnlineStatus.isNotEmpty)
              Text(
                beautifiedOnlineStatus,
                style: theme.textTheme.headline6,
              ),
          ],
        ),
        actions: [
          Align(
            child: ElevatedButton(
              style: buttonStyleTX.filledIcon,
              onPressed: () {},
              child: const Icon(
                Icons.more_vert,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.custom(
                reverse: true,
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: _messages.length,
                  findChildIndexCallback: (key) {
                    final messageKey = key as ValueKey;
                    final val = _messagesIndex[messageKey.value]!;

                    return _messages.length - 1 - val;
                  },
                  (context, index) {
                    final message = _messages[_messages.length - 1 - index];

                    if (message.sender == null) {
                      return InfoMessageCard(
                        key: ValueKey(message.id),
                        message: message,
                      );
                    }

                    if (message.sender?.id == _me.id) {
                      return MyMessageCard(
                        key: ValueKey(message.id),
                        message: message,
                      );
                    }

                    return OthersMessageCard(
                      key: ValueKey(message.id),
                      showSender: _isGroup,
                      message: message,
                    );
                  },
                ),
              ),
            ),
            const MessageField(),
          ],
        ),
      ),
    );
  }

  String _beautifyOnlineStatus(
    AppLocalizations l10n,
    OnlineStatus onlineStatus,
  ) {
    if (onlineStatus is IsOnlineStatus) {
      return l10n.is_online_status;
    }

    if (onlineStatus is HiddenOnlineStatus) {
      return l10n.hidden_online_status;
    }

    if (onlineStatus is LastSeenOnlineStatus) {
      return '${l10n.last_seen_online_status} ${_formatDateTime(onlineStatus.dateTime)}';
    }

    if (onlineStatus is NoOnlineStatus) {
      return l10n.no_online_status;
    }

    return '';
  }

  // TODO: move to separated class
  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();

    if (dateTime.year == now.year) {
      if (dateTime.month == now.month) {
        if (dateTime.day == now.day) {
          return DateFormat.Hm().format(dateTime);
        }
      }

      return DateFormat.MMMd().format(dateTime);
    }

    return DateFormat('dd.MM.yyy').format(dateTime);
  }
}
