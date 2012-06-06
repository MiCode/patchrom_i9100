.class public Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;
.super Landroid/preference/Preference;
.source "SingleSpellCheckerPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

.field private mPrefAll:Landroid/view/View;

.field private mPrefLeftButton:Landroid/view/View;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRes:Landroid/content/res/Resources;

.field private mSelected:Z

.field private mSettingsButton:Landroid/view/View;

.field private mSettingsIntent:Landroid/content/Intent;

.field private final mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private mSubtypeButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private final mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;Landroid/content/Intent;Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;)V
    .locals 4
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "sci"
    .parameter "tsm"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object v2, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    .line 61
    iput-object p1, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

    .line 62
    invoke-virtual {p1}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    .line 63
    iput-object p4, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 64
    const v1, 0x7f040076

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->setLayoutResource(I)V

    .line 65
    iput-object p3, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    .line 66
    iput-boolean v3, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    .line 67
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, settingsActivity:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iput-object v2, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->onLeftButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method private enableButtons(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x8

    const v1, 0x3ecccccd

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 192
    if-nez p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 204
    if-nez p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method private onLeftButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 112
    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;->startActivity(Landroid/content/Intent;)V

    .line 182
    :cond_0
    return-void
.end method

.method private onSubtypeButtonClicked(Landroid/view/View;)V
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x0

    .line 131
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 132
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 134
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b04c8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 136
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    .line 137
    .local v6, size:I
    add-int/lit8 v8, v6, 0x1

    new-array v4, v8, [Ljava/lang/CharSequence;

    .line 138
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b04fb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    .line 139
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 140
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 141
    .local v7, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 144
    .local v5, label:Ljava/lang/CharSequence;
    add-int/lit8 v8, v3, 0x1

    aput-object v5, v4, v8

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v7           #subtype:Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    const/4 v1, 0x0

    .line 149
    .local v1, checkedItem:I
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v11}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    .line 150
    .local v2, currentScs:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v2, :cond_2

    .line 151
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_2

    .line 152
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 153
    add-int/lit8 v1, v3, 0x1

    .line 158
    :cond_2
    new-instance v8, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$4;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$4;-><init>(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v4, v1, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    .line 175
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 176
    return-void

    .line 151
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateSelectedState(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->enableButtons(Z)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 79
    const v0, 0x7f08015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    .line 80
    const v0, 0x7f08015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 81
    const v0, 0x7f08015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    new-instance v1, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$1;-><init>(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mTitleText:Landroid/widget/TextView;

    .line 90
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSummaryText:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f080162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$2;-><init>(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f080160

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$3;-><init>(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 108
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    .line 127
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 128
    return-void
.end method
