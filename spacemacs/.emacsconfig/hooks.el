(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'org-mode-hook (lambda () (hl-todo-mode -1) nil))
