class Charter < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '貸切あり' },
      { id: 3, name: '貸切なし' },
    ]
    end