User.delete_all
Item.delete_all

User.create!([
  {id: 1, name: "Lianna", email: "Lianna@gmail.com", password: "password"},
  {id: 2, name: "Mollie", email: "Mollie@gmail.com", password: "password"},
  {id: 3, name: "Michael", email: "Michael@gmail.com", password: "password"},
  {id: 4, name: "Joe", email: "Joe@gmail.com", password: "password"},
  {id: 5, name: "Tom", email: "Tom@gmail.com", password: "password"}
])

Item.create!([
  {id: 1, user_id: 1, description: "Walk the dog", due_date: "October, 9", completed: false},
  {id: 2, user_id: 1, description: "Take out the trash", due_date: "May, 9", completed: false},
  {id: 3, user_id: 1, description: "Call mom", due_date: "June, 9", completed: false},
  {id: 4, user_id: 2, description: "Walk the dog", due_date: "October, 9", completed: false},
  {id: 5, user_id: 3, description: "Clean the dishes", due_date: "May, 9", completed: false}
])