

Describe "Should_Demo_The_Basics" {
    It 'Showed the pipeline and explained why it is good.' {
    $PresenterExplainedThePipeline = $true
    
    $PresenterExplainedThePipeline | Should -Be $true
}

It 'Showed how to Loop.' {
    $DemoComplete = $true
    
    $DemoComplete | Should -Be $true
}

It 'Showed how to Select pipeline members.' {
    $DemoComplete = $true
    
    $DemoComplete | Should -Be $true
}

It 'Showed how to Query with Where-Object.' {
    $DemoComplete = $true
    
    $DemoComplete | Should -Be $true
}

It 'Made us all try it out.' {
    $ExcersizeComplete = $false
    
    $ExcersizeComplete | Should -Be $true
}
}