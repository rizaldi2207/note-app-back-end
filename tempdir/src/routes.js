const {
  addNoteHandler, getAllNotesHandler, getNotesHandlerById, editNotesHandlerById, deleteNotesHandlerByid,
} = require('./handler');

const routes = [
  {
    method: 'POST',
    path: '/notes',
    handler: addNoteHandler,
  },
  {
    method: 'GET',
    path: '/notes',
    handler: getAllNotesHandler,
  },
  {
    method: 'GET',
    path: '/notes/{id}',
    handler: getNotesHandlerById,
  },
  {
    method: 'PUT',
    path: '/notes/{id}',
    handler: editNotesHandlerById,
  },
  {
    method: 'DELETE',
    path: '/notes/{id}',
    handler: deleteNotesHandlerByid,
  },
];

module.exports = routes;
