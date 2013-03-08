Student.create([
  { name: 'Flávio Dimas', age: 14, gender: 'male', email: 'flavio@email.com', klass: 1 },
  { name: 'Diogo Andrade', age: 14, gender: 'male', email: 'diogo@email.com', klass: 1  },
  { name: 'Karina Ponte', age: 16, gender: 'female', email: 'karina@email.com', klass: 3 },
  { name: 'Flávia Spellman', age: 15, gender: 'female', email: 'flavia@email.com', klass: 2 },
  { name: 'Douglas Hermann', age: 15, gender: 'male', email: 'douglas@email.com', klass: 2 },
  { name: 'Estela Prates', age: 14, gender: 'female', email: 'estela@email.com', klass: 1 },
  { name: 'Carlos Santos', age: 16, gender: 'male', email: 'carlos@email.com', klass: 3 },
  { name: 'Rita Mirtes', age: 16, gender: 'female', email: 'rita@email.com', klass: 3 },
  { name: 'Pedro Fraga', age: 14, gender: 'male', email: 'pedro@email.com', klass: 1 },
  { name: 'Gabriel Fraga', age: 15, gender: 'male', email: 'gabriel@email.com', klass: 2 }])

Teacher.create([
  { name: 'Álvaro Souza', age: 45, gender: 'male', email: 'alvaro@email.com' },
  { name: 'Bento Ramalho', age: 42, gender: 'male', email: 'bento@email.com' },
  { name: 'Cristina Kerr', age: 37, gender: 'female', email: 'cristina@email.com' },
  { name: 'Suzana Couto', age: 47, gender: 'female', email: 'suzana@email.com' },
  { name: 'Reinaldo Melo', age: 39, gender: 'male', email: 'reinaldo@email.com' }])

Subject.create([
  { name: 'Algebra', area: 'Mathematics', content: 'A lot of numbers'},
  { name: 'Natural History', area: 'History', content: 'A lot of characters'},
  { name: 'Social Science', area: 'Sociology', content: 'A lot of hypothesis'},
  { name: 'Political Science', area: 'Sociology', content: 'A lot of fake'},
  { name: 'Physics', area: 'Science', content: 'A lot of science'}])

Klass.create([
  { name: '7th grade', shift: 'morning', term: '1st semester', year: 2013,
    schedule_attributes:
    { subject: 1, teacher: 2 },
    { subject: 2, teacher: 3 },
    { subject: 3, teacher: 4 }},
  { name: '8th grade', shift: 'afternoon', term: '1st semester', year: 2013,
    schedule_attributes:
    { subject: 2, teacher: 3 },
    { subject: 3, teacher: 4 },
    { subject: 4, teacher: 5 }},
  { name: '9th grade', shift: 'evening', term: '1st semester', year: 2013,
    schedule_attributes:
    { subject: 3, teacher: 4 },
    { subject: 4, teacher: 5 },
    { subject: 5, teacher: 1 }}])
