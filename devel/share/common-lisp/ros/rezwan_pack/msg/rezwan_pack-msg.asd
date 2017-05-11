
(cl:in-package :asdf)

(defsystem "rezwan_pack-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Mouse" :depends-on ("_package_Mouse"))
    (:file "_package_Mouse" :depends-on ("_package"))
  ))