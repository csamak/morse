--API influence from Data.Bimap (http://hackage.haskell.org/packages/archive/bimap/0.2.4/doc/html/Data-Bimap.html)
module Data.DualMap (DualMap, empty, lookupL, lookupR, fromList) where

import qualified Data.Map   as Map
import           Data.Tuple

data DualMap a b = DualMap (Map.Map a b) (Map.Map b a)

empty :: DualMap a b
empty = DualMap Map.empty Map.empty

lookupL :: Ord k => k -> DualMap k a -> Maybe a
lookupL a (DualMap left _) = Map.lookup a left

lookupR :: Ord k => k -> DualMap a k -> Maybe a
lookupR a (DualMap _ right) = Map.lookup a right

fromList :: (Ord a, Ord b) => [(a, b)] -> DualMap a b
fromList xs = DualMap (Map.fromList xs) (Map.fromList (map swap xs))
