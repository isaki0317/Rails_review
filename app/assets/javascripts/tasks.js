document.addEventListener('turbolinks:load', function() {
  document.querySelectorAll('td').forEach(function(td) {
    td.addEventListener('mouseover', function(e) {
      e.currentTarget.style.backgroundColor = '#eff';
    });

    td.addEventListener('mouseout', function(e) {
      e.currentTarget.style.backgroundColor = '';
    });
  });
});

// display: noneで、サーバからのレスポンスに依存しない非同期通信
// document.addEventListener('turbolinks:load', function() {
//   document.querySelectorAll('.delete').forEach(function(a) {
//     a.addEventListener('ajax:success', function() {
//       var td = a.parentNode;
//       var tr = td.parentNode;
//       tr.style.display = 'none';
//     });
//   });
// });