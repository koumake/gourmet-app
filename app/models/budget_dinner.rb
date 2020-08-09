class BudgetDinner < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '1000円〜2000円' },
      { id: 3, name: '2000円〜3000円' },
      { id: 4, name: '3000円〜4000円' },
      { id: 5, name: '4000円〜5000円' },
      { id: 6, name: '5000円〜10000円' },
      { id: 7, name: '10000円〜' },
    ]
    end
