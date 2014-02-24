require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe package('git') do
 it { should be_installed }
end

describe command('git --version') do
  it { should return_exit_status 0 }
  it { should return_stdout /1.7/ }
end