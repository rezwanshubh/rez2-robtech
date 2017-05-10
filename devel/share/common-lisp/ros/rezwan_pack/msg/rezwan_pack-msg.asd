
(cl:in-package :asdf)

(defsystem "rezwan_pack-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MyEvent" :depends-on ("_package_MyEvent"))
    (:file "_package_MyEvent" :depends-on ("_package"))
  ))