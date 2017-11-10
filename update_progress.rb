module Progress
  def update_progress(current, total)
    percent = ((current.to_f / total.to_f) * 100.0).round(2)
    terminal = current == total ? "\n" : "\r"
    print ">Progress(#{percent}%)#{terminal}"
    $stdout.flush
  end
end
