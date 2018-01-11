(import [trytond.pool [PoolMeta]])
(import [trytond.model [fields ModelSQL ModelView]])
(def --all-- ["HelloTag" "Hello" "Tag"])

(defclass HelloTag [ModelSQL]
  "Hello Tag M2M"
  [--name-- "hello.hellotag"
   tag (.Many2One fields "hello.tag" "Tag")
   hello (.Many2One fields "hello" "Hello")])

(defclass Hello []
  "Hello World with tag"
  [--name-- "hello"
   --metaclass-- PoolMeta
   tags (.Many2Many fields "hello.hellotag" "hello" "tag" "Tags")])

(defclass Tag [ModelSQL ModelView]
  "Tag"
  [--name-- "hello.tag"
   name (.Char fields "name")])



