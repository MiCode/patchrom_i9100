.class public Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;
.super Landroid/preference/PreferenceFragment;
.source "RemoteControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentLocation"
.end annotation


# instance fields
.field private mNetwork:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 313
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 284
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 286
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 287
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 290
    :cond_0
    const v1, 0x7f050017

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->addPreferencesFromResource(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 293
    const-string v1, "location_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 296
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b0405

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    return-void
.end method
