class Food < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '野菜料理にこだわる' },
      { id: 3, name: '魚介料理にこだわる' },
      { id: 4, name: '健康・美容メニューあり' },
      { id: 5, name: 'チーズ料理あり（女子受け抜群）' },
      { id: 6, name: '糖質オフメニューあり' },
      { id: 7, name: 'カロリー表示あり' },
    ]
    end