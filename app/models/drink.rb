class Drink < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: 'ワインあり' },
      { id: 3, name: 'ワインにこだわる' },
      { id: 4, name: 'お洒落なカクテルあり' },
      { id: 5, name: 'カクテルにこだわる' },
      { id: 6, name: '女性でも飲みやすい日本酒あり' },
      { id: 7, name: '女性でも飲みやすい焼酎あり' },
    ]
    end