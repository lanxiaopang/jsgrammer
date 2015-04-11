/**
 * Created by Sun on 15-3-24.
 */
$(document).ready(function () {
    var DATA = {
        'appL': {
            'avatar': '头像信息',
            'comment': '留言簿',
            'doing': '最新动态'
        },
        'appM': {
            'blog': 'blog',
            'profile': '个人资料',
            'spaceinfo': '空间介绍',
            'friends': '我的好友'
        },
        'appR': {
            'gallery': '我的相册',
            'visitors': '最近访客',
            'thread': '我的话题'
        }
    }
    Jh.fn.init(DATA);
    Jh.Portal.init(DATA);
});