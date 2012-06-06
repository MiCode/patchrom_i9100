.class public Lcom/android/OriginalSettings/tts/TtsEnginePreference;
.super Landroid/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final mPreferenceActivity:Lmiui/preference/BasePreferenceActivity;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;Lmiui/preference/BasePreferenceActivity;)V
    .locals 1
    .parameter "context"
    .parameter "info"
    .parameter "state"
    .parameter "prefActivity"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/android/OriginalSettings/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$1;-><init>(Lcom/android/OriginalSettings/tts/TtsEnginePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 93
    const v0, 0x7f040077

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 95
    iput-object p3, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 96
    iput-object p4, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mPreferenceActivity:Lmiui/preference/BasePreferenceActivity;

    .line 97
    iput-object p2, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 100
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/tts/TtsEnginePreference;)Lmiui/preference/BasePreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mPreferenceActivity:Lmiui/preference/BasePreferenceActivity;

    return-object v0
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 171
    :cond_0
    if-eqz p2, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 106
    iget-object v6, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v6, :cond_0

    .line 107
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, view:Landroid/view/View;
    const v6, 0x7f080164

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 113
    .local v1, rb:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v7}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    .local v0, isChecked:Z
    if-eqz v0, :cond_1

    .line 117
    iget-object v6, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSharedState:Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v6, v1}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 120
    :cond_1
    iput-boolean v4, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 122
    iput-boolean v5, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 124
    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 126
    const v6, 0x7f080165

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, textLayout:Landroid/view/View;
    new-instance v6, Lcom/android/OriginalSettings/tts/TtsEnginePreference$2;

    invoke-direct {v6, p0, v1}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$2;-><init>(Lcom/android/OriginalSettings/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v6, 0x7f080166

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    .line 137
    iget-object v6, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v7, :cond_2

    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v5, Lcom/android/OriginalSettings/tts/TtsEnginePreference$3;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/tts/TtsEnginePreference$3;-><init>(Lcom/android/OriginalSettings/tts/TtsEnginePreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-object v3

    :cond_2
    move v4, v5

    .line 137
    goto :goto_0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    return-void
.end method
