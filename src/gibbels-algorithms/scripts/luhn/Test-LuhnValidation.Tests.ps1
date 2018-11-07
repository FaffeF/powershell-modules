. $PSScriptRoot\LuhnValidation.ps1

Describe "Test-LuhnValidation" {
    Context "Given a Visa credit card (4024007106418766)" {
        $result = Test-LuhnValidation -Number 4024007106418766
        It "Should pass validation" {
            $result | Should -BeTrue
        }
    }

    Context "Given a American Express credit card (374519847840029)" {
        $result = Test-LuhnValidation -Number 374519847840029
        It "Should pass validation" {
            $result | Should -BeTrue
        }
    }

    Context "Given a Mastercard credit card (5353760959262719)" {
        $result = Test-LuhnValidation -Number 5353760959262719
        It "Should pass validation" {
            $result | Should -BeTrue
        }
    }

    Context "Given a flipped number pair (4024070106418766)" {
        $result = Test-LuhnValidation -Number 4024070106418766
        It "Should fail validation" {
            $result | Should -BeFalse
        }
    }
    
    Context "Given a changed digit (4034007106418766)" {
        $result = Test-LuhnValidation -Number 4034007106418766
        It "Should fail validation" {
            $result | Should -BeFalse
        }
    }

    Context "Given a non-number (4034007-106418766)" {
        It "Should throw an exception" {
            {Test-LuhnValidation -Number "4034007-106418766"} | Should -Throw
        }
    }
}

Describe "Get-LuhnValidationNumber" {
    Context "Given a Visa Credit card number missing the last digit (402400710641876)" {
        It "Should return a valid Visa Card number" {
            Test-LuhnValidation (Get-LuhnValidationNumber -Number 402400710641876) | Should -BeTrue
        }
    }

    Context "Given a non-number (4024007-10641876)" {
        It "Should throw an exception" {
            {Get-LuhnValidationNumber -Number "4034007-106418766"} | Should -Throw
        }
    }
}
