require 'spec_helper'

describe 'ip_increment' do
    it { should run.with_params('10.0.0.254/23','2').and_return('10.0.1.0/23') }
    it { should run.with_params('10.0.0.1/24').and_return('10.0.0.2/24') }
    it { should run.with_params('10.0.0.255/24').and_raise_error(ArgumentError) }
    it { should run.with_params('fd00::fe/119','2').and_return('fd00::100/119') }
    it { should run.with_params('fd00::1/120').and_return('fd00::2/120') }
    it { should run.with_params('fd00::ff/120').and_raise_error(ArgumentError) }
end
