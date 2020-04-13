module Delti
  def dt!
    @_delta_table ||= {}
    key = Kernel.caller.first
    
    last = @_delta_table[key]
    if last.nil?
      @_delta_table[key] = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      nil
    else
      now = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      delta = now - last
      @_delta_table[key] = now
      delta
    end
  end
end
