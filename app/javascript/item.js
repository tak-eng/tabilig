
window.addEventListener('load', function(){
  const addTaskTrigger = document.getElementsByClassName('js-item-trigger')[0];
  const addTaskTarget = document.getElementsByClassName('js-item-target')[0];
  const addTaskValue = document.getElementsByClassName('js-item-value')[0];
  const removeTask = removeButton => {
    const targetTask = removeButton.closest('li');
    addTaskTarget.removeChild(targetTask);
  };
  const addTask = task => {
    const listItem = document.createElement('li');
    const removeButton = document.createElement('button');
    removeButton.innerText = '削除';
    removeButton.addEventListener('click', () => removeTask(removeButton));
    listItem.innerText = task;
    listItem.append(removeButton);
    addTaskTarget.appendChild(listItem);
  };
  addTaskTrigger.addEventListener('click', () => {
    const task = addTaskValue.value;
    addTask(task);
    addTaskValue.value = '';
  });
});

