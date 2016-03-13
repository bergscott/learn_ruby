def measure(times=1, &block)
  start_time = Time.now
  times.times {block.call}
  (Time.now - start_time).to_f / times.to_f
end

