class Reserve < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '予約可' },
      { id: 3, name: '予約不可' },
      { id: 4, name: '完全予約制' },
      
    ]
    end