;;; telephone-line-separators.el --- Separators for Telephone Line

;; Copyright (C) 2015-2017 Daniel Bordak

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Separators for Telephone Line.
;; To create your own, look at the functions defined in telephone-line-utils.el

;;; Code:

(require 'color)
(require 'telephone-line-utils)

(defun telephone-line-row-pattern-fixed-gradient (_ width)
  "Create a gradient bytestring of WIDTH.  _ is disregarded."
  (mapcar (lambda (num)
            (/ num (float width)))
          (number-sequence 1 width)))

(defvar telephone-line-gradient
  (make-instance 'telephone-line-separator
                 :axis-func #'identity
                 :pattern-func #'telephone-line-row-pattern-fixed-gradient))

(defvar telephone-line-abs-right
  (make-instance 'telephone-line-separator
                 :axis-func #'abs
                 :alt-char #xe0b2))
(defvar telephone-line-abs-left
  (make-instance 'telephone-line-separator
                 :axis-func (telephone-line-complement abs)
                 :alt-char #xe0b0))
(defvar telephone-line-abs-hollow-right
  (make-instance 'telephone-line-subseparator
                 :axis-func #'abs
                 :alt-char #xe0b3))
(defvar telephone-line-abs-hollow-left
  (make-instance 'telephone-line-subseparator
                 :axis-func (telephone-line-complement abs)
                 :alt-char #xe0b1))

(defvar telephone-line-cubed-right
  (make-instance 'telephone-line-separator
                 :axis-func (lambda (x) (expt x 3))))
(defvar telephone-line-cubed-left
  (make-instance 'telephone-line-separator
                 :axis-func (lambda (x) (- (expt x 3)))))
(defvar telephone-line-cubed-hollow-right
  (make-instance 'telephone-line-subseparator
                 :axis-func (lambda (x) (expt x 3))))
(defvar telephone-line-cubed-hollow-left
  (make-instance 'telephone-line-subseparator
                 :axis-func (lambda (x) (- (expt x 3)))))

(defvar telephone-line-sin-right
  (make-instance 'telephone-line-separator :axis-func (telephone-line-complement sin)))
(defvar telephone-line-sin-left
  (make-instance 'telephone-line-separator :axis-func #'sin))
(defvar telephone-line-sin-hollow-right
  (make-instance 'telephone-line-subseparator :axis-func (telephone-line-complement sin)))
(defvar telephone-line-sin-hollow-left
  (make-instance 'telephone-line-subseparator :axis-func #'sin))

(defvar telephone-line-halfsin-right
  (make-instance 'telephone-line-separator :axis-func (lambda (x) (- (sin (/ x 2))))))
(defvar telephone-line-halfsin-left
  (make-instance 'telephone-line-separator :axis-func (lambda (x) (sin (/ x 2)))))
(defvar telephone-line-halfsin-hollow-right
  (make-instance 'telephone-line-subseparator :axis-func (lambda (x) (- (sin (/ x 2))))))
(defvar telephone-line-halfsin-hollow-left
  (make-instance 'telephone-line-subseparator :axis-func (lambda (x) (sin (/ x 2)))))

(defvar telephone-line-cos-right
  (make-instance 'telephone-line-separator :axis-func (telephone-line-complement cos)))
(defvar telephone-line-cos-left
  (make-instance 'telephone-line-separator :axis-func #'cos))
(defvar telephone-line-cos-hollow-right
  (make-instance 'telephone-line-subseparator :axis-func (telephone-line-complement cos)))
(defvar telephone-line-cos-hollow-left
  (make-instance 'telephone-line-subseparator :axis-func #'cos))

(defvar telephone-line-halfcos-right
  (make-instance 'telephone-line-separator :axis-func (lambda (x) (- (cos (/ x 2))))))
(defvar telephone-line-halfcos-left
  (make-instance 'telephone-line-separator :axis-func (lambda (x) (cos (/ x 2)))))
(defvar telephone-line-halfcos-hollow-right
  (make-instance 'telephone-line-subseparator :axis-func (lambda (x) (- (cos (/ x 2))))))
(defvar telephone-line-halfcos-hollow-left
  (make-instance 'telephone-line-subseparator :axis-func (lambda (x) (cos (/ x 2)))))

(defvar telephone-line-tan-right
  (make-instance 'telephone-line-separator :axis-func (lambda (x) (- (tan (/ x 2.2))))))
(defvar telephone-line-tan-left
  (make-instance 'telephone-line-separator :axis-func (lambda (x) (tan (/ x 2.2)))))
(defvar telephone-line-tan-hollow-right
  (make-instance 'telephone-line-subseparator :axis-func (lambda (x) (- (tan (/ x 2.2))))))
(defvar telephone-line-tan-hollow-left
  (make-instance 'telephone-line-subseparator :axis-func (lambda (x) (tan (/ x 2.2)))))

(defvar telephone-line-identity-right
  (make-instance 'telephone-line-separator :axis-func #'identity))
(defvar telephone-line-identity-left
  (make-instance 'telephone-line-separator :axis-func #'-))
(defvar telephone-line-identity-hollow-right
  (make-instance 'telephone-line-subseparator :axis-func #'identity))
(defvar telephone-line-identity-hollow-left
  (make-instance 'telephone-line-subseparator :axis-func #'-))

(defvar telephone-line-nil
  (make-instance 'telephone-line-nil-separator))

(provide 'telephone-line-separators)
;;; telephone-line-separators.el ends here
