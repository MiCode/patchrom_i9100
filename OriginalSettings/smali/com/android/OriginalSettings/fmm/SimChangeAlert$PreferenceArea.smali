.class public Lcom/android/OriginalSettings/fmm/SimChangeAlert$PreferenceArea;
.super Landroid/preference/PreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/fmm/SimChangeAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceArea"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert$PreferenceArea;->addPreferencesFromResource(I)V

    .line 184
    const-string v0, "message_preference"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert$PreferenceArea;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-static {v0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->access$402(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;

    .line 185
    invoke-static {}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->access$400()Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, key:Ljava/lang/String;
    const-string v1, "message_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert$PreferenceArea;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b072b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 202
    :cond_0
    :goto_0
    return v3

    .line 198
    :cond_1
    invoke-static {}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->access$400()Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    invoke-static {}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->access$400()Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
