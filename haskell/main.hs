import System.CPUTime

time :: Fractional b => a -> IO b
time a = do
  start <- getCPUTime
  end <- seq a getCPUTime
  return (fromIntegral (end - start) * 1e-12)

count :: Int -> Int
count 1_000_000_000 = 1_000_000_000
count x =
  count (x + 1)

main =
  time (count 1) >>= \x ->
  putStr "Looping 1000000000 times in Haskell took: " >>
  print x
