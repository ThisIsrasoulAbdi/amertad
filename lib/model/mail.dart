class Mail {
  final int id;
  final String name;
  final String message;
  final String time;
  final bool isOnline;
  final String imagePath;
  final bool statusMessage;

  Mail(this.id, this.name, this.message, this.time, this.isOnline,
      this.imagePath, this.statusMessage);
}

class DataFacke {
  static List<Mail> getMailData() {
    return [
      Mail(
        1,
        'Brookiyn Simmons',
        'How are you?',
        '08:00',
        false,
        'user.png',
        false,
      ),
      Mail(
        1,
        'Ronold Richards',
        'just idea for next time',
        '07:12',
        false,
        'user1.png',
        false,
      ),
      Mail(
        1,
        'Comeron Wiliamsan',
        'perfect!',
        '09:30',
        true,
        '',
        true,
      ),
      Mail(
        1,
        'Robert Fax',
        'haha thats terufying',
        '12:34',
        true,
        '',
        false,
      ),
      Mail(
        1,
        'Savannah Nguyen',
        'i,ll there in 2 hours ',
        '5//27/15',
        false,
        'user3.png',
        false,
      ),
    ];
  }
}
