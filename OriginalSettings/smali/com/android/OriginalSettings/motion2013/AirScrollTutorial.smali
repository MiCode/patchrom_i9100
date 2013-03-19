.class public Lcom/android/settings/motion2013/AirScrollTutorial;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirScrollTutorial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirScrollTutorial;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHoverScrollMode(Z)V

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirScrollTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 25
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirScrollTutorial;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2013/AirScrollTutorial;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 27
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/16 v3, 0x14

    if-gt v1, v3, :cond_0

    .line 28
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    .local v2, item:Landroid/preference/Preference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/motion2013/AirScrollTutorial;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v2           #item:Landroid/preference/Preference;
    :cond_0
    return-void
.end method
