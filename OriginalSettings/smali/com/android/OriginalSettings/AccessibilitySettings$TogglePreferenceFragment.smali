.class abstract Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TogglePreferenceFragment"
.end annotation


# instance fields
.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mShownDialogId:I

.field private mSummaryPreference:Landroid/preference/Preference;

.field private mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1043
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private installActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #calls: Lcom/android/OriginalSettings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$800(Landroid/app/Activity;)Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    .line 1181
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment$2;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1202
    return-void
.end method

.method private processArguments()V
    .locals 10

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 1208
    .local v1, arguments:Landroid/os/Bundle;
    const-string v8, "preference_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 1211
    const-string v8, "checked"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1212
    .local v2, enabled:Z
    iget-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v8, v2}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1215
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 1216
    .local v0, activity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v0}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 1218
    const-string v8, "title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1219
    .local v7, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1223
    .end local v7           #title:Ljava/lang/String;
    :cond_1
    const-string v8, "summary"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1224
    .local v6, summary:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1227
    const-string v8, "settings_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1228
    .local v5, settingsTitle:Ljava/lang/String;
    const-string v8, "settings_component_name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1229
    .local v3, settingsComponentName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1230
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 1232
    .local v4, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1233
    iput-object v5, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 1234
    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 1235
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 1240
    .end local v4           #settingsIntent:Landroid/content/Intent;
    :cond_2
    const-string v8, "enable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 1244
    const-string v8, "enable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 1248
    const-string v8, "disable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 1252
    const-string v8, "disable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 1254
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1163
    packed-switch p2, :pswitch_data_0

    .line 1175
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1165
    :pswitch_0
    iget v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_0

    .line 1166
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1167
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 1177
    :goto_1
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 1165
    goto :goto_0

    .line 1170
    :pswitch_1
    iget v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1171
    .restart local v0       #checked:Z
    :goto_2
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1172
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #checked:Z
    :cond_1
    move v0, v1

    .line 1170
    goto :goto_2

    .line 1163
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 1070
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1071
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1073
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1074
    new-instance v1, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment$1;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 1098
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1099
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f040090

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1100
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1101
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 1134
    const/4 v1, 0x0

    .line 1135
    .local v1, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1136
    .local v0, message:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 1148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1138
    :pswitch_0
    iput v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    .line 1139
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 1140
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 1150
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1143
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    .line 1144
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 1145
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 1146
    goto :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1126
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1127
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1128
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1129
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1130
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1115
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1119
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 1120
    return-void
.end method

.method public abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 1105
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1106
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->installActionBarToggleSwitch()V

    .line 1107
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->processArguments()V

    .line 1108
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1109
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1110
    return-void
.end method
