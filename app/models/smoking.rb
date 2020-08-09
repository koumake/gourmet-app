class Smoking < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '全席喫煙可' },
      { id: 3, name: '分煙' },
      { id: 4, name: '分煙（加熱式タバコ限定）' },
      { id: 5, name: '全席禁煙' },
      
    ]
    end