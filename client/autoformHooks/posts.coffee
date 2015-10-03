postHooks =
  before:
    insert: (doc) =>
      if Meteor.userId()
        doc.userId = Meteor.userId()
      return doc

AutoForm.addHooks 'insertPostForm', postHooks
