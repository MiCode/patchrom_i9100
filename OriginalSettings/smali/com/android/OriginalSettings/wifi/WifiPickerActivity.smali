.class public Lcom/android/settings/wifi/WifiPickerActivity;
.super Landroid/preference/PreferenceActivity;
.source "WifiPickerActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# instance fields
.field private backButton:Landroid/widget/Button;

.field private nextButton:Landroid/widget/Button;

.field private skipButton:Landroid/widget/Button;

.field private v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 56
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_0
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v6, "WifiPickerActivity"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const v6, 0x102029d

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .local v0, buttonBar:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    move-object v2, p0

    .line 71
    .local v2, context:Landroid/content/Context;
    :try_start_0
    const-string v6, "layout_inflater"

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 73
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0400e6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    .line 74
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 77
    .local v5, intent:Landroid/content/Intent;
    const-string v6, "extra_prefs_show_button_bar"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    const-string v6, "WifiPickerActivity"

    const-string v7, "Exception while onCreate 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v7, 0x7f0b00e1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v7, 0x7f0b028a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    .line 81
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/wifi/WifiPickerActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiPickerActivity$1;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v7, 0x7f0b028b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    .line 88
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/wifi/WifiPickerActivity$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiPickerActivity$2;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->v:Landroid/view/View;

    const v7, 0x7f0b028c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    .line 95
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/wifi/WifiPickerActivity$3;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiPickerActivity$3;-><init>(Lcom/android/settings/wifi/WifiPickerActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const-string v6, "extra_prefs_set_next_text"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    const-string v6, "extra_prefs_set_next_text"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, buttonText:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    .end local v1           #buttonText:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "extra_prefs_set_back_text"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    const-string v6, "extra_prefs_set_back_text"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1       #buttonText:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    .end local v1           #buttonText:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v6, "extra_prefs_show_skip"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->skipButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    return-void

    .line 108
    .restart local v1       #buttonText:Ljava/lang/String;
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v1           #buttonText:Ljava/lang/String;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 125
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const-string v6, "WifiPickerActivity"

    const-string v7, "Exception while onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 117
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #buttonText:Ljava/lang/String;
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPickerActivity;->backButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    const/4 v5, 0x1

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    const-string v2, ":android:show_fragment"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, ":android:show_fragment_args"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    const-string v2, ":android:no_headers"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 145
    .local v1, orgIntent:Landroid/content/Intent;
    const-string v2, "extra_prefs_show_button_bar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "extra_prefs_show_button_bar"

    const-string v3, "extra_prefs_show_button_bar"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    :cond_0
    const-string v2, "extra_prefs_set_next_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "extra_prefs_set_next_text"

    const-string v3, "extra_prefs_set_next_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    :cond_1
    const-string v2, "extra_prefs_set_back_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    const-string v2, "extra_prefs_set_back_text"

    const-string v3, "extra_prefs_set_back_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :cond_2
    const-string v2, "wifi_show_action_bar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    const-string v2, "wifi_show_action_bar"

    const-string v3, "wifi_show_action_bar"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    :cond_3
    const-string v2, "wifi_show_menus"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    const-string v2, "wifi_show_menus"

    const-string v3, "wifi_show_menus"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    :cond_4
    if-nez p3, :cond_5

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_5
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
