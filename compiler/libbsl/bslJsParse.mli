(*
    Copyright © 2012 MLstate

    This file is part of Opa.

    Opa is free software: you can redistribute it and/or modify it under the
    terms of the GNU Affero General Public License, version 3, as published by
    the Free Software Foundation.

    Opa is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
    FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
    more details.

    You should have received a copy of the GNU Affero General Public License
    along with Opa. If not, see <http://www.gnu.org/licenses/>.
*)

(**
   @author Arthur Azevedo de Amorim
*)

(** [parse filename] attempts to read a js file [filename] and parse
    its directives according to the doc-like syntax *)
val parse :
  string ->
  [ `error   of string
  | `success of (FilePos.pos * BslTags.t * BslDirectives.Js.t) list ]
