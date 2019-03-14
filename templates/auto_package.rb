# frozen_string_literal: true

Bankai::Docker.setup do
  detect_package :database, :gem do |package|
    if pg?
      package.add_dependency 'postgresql-dev', runtime: false
      package.add_runtime_dependency 'postgresql-libs'
    end

    if mysql?
      package.add_dependency 'mariadb-dev', runtime: false
      package.add_runtime_dependency 'mariadb-client-libs'
    end

    if gem?('sassc')
      package.add_runtime_dependency 'libstdc++'
    end
  end
end
