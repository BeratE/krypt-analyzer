class Langstat < ApplicationRecord
  validates :language, presence: true, length: { minimum: 3, maximum: 32 }, uniqueness: true
  validates :A, presence: true
  validates :B, presence: true
  validates :C, presence: true
  validates :D, presence: true
  validates :E, presence: true 
  validates :F, presence: true
  validates :G, presence: true
  validates :H, presence: true
  validates :I, presence: true
  validates :J, presence: true
  validates :K, presence: true
  validates :L, presence: true
  validates :M, presence: true
  validates :N, presence: true
  validates :O, presence: true
  validates :P, presence: true
  validates :Q, presence: true
  validates :R, presence: true
  validates :S, presence: true
  validates :T, presence: true
  validates :U, presence: true
  validates :V, presence: true
  validates :W, presence: true
  validates :X, presence: true
  validates :Y, presence: true
  validates :Z, presence: true
end
