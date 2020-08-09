class PrivateRoom < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '個室あり' },
      { id: 3, name: '個室なし' },
      
    ]
    end