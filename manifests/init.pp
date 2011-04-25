import "definitions/*.pp"
class dyn_module {
  package{'libjson-ruby':
    ensure  => installed,
  }
}

