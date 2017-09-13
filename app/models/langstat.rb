class Langstat < ApplicationRecord
  validates :language, presence: true, length: { minimum: 3, maximum: 32 }, uniqueness: true
  validates_numericality_of :A, :in => 0..10000
  validates_numericality_of :B, :in => 0..10000
  validates_numericality_of :C, :in => 0..10000
  validates_numericality_of :D, :in => 0..10000
  validates_numericality_of :E, :in => 0..10000
  validates_numericality_of :F, :in => 0..10000
  validates_numericality_of :G, :in => 0..10000
  validates_numericality_of :H, :in => 0..10000
  validates_numericality_of :I, :in => 0..10000
  validates_numericality_of :J, :in => 0..10000
  validates_numericality_of :K, :in => 0..10000
  validates_numericality_of :L, :in => 0..10000
  validates_numericality_of :M, :in => 0..10000
  validates_numericality_of :N, :in => 0..10000
  validates_numericality_of :O, :in => 0..10000
  validates_numericality_of :P, :in => 0..10000
  validates_numericality_of :Q, :in => 0..10000
  validates_numericality_of :R, :in => 0..10000
  validates_numericality_of :S, :in => 0..10000
  validates_numericality_of :T, :in => 0..10000
  validates_numericality_of :U, :in => 0..10000
  validates_numericality_of :V, :in => 0..10000
  validates_numericality_of :W, :in => 0..10000
  validates_numericality_of :X, :in => 0..10000
  validates_numericality_of :Y, :in => 0..10000
  validates_numericality_of :Z, :in => 0..10000
end
