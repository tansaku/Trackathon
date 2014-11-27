Dashing.scheduler.every '1s' do
  Dashing.send_event('project', { value: 20})
end
