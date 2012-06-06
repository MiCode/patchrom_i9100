.class public Lcom/android/OriginalSettings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 123
    new-instance v0, Lcom/android/OriginalSettings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/MasterClear$1;-><init>(Lcom/android/OriginalSettings/MasterClear;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 157
    iget-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f080103

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 158
    iget-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/OriginalSettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f080101

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 160
    iget-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f080102

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 169
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 170
    .local v3, isExtStorageEmulated:Z
    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClear;->isExtStorageEncrypted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f080100

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, externalOption:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0800fc

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, externalAlsoErased:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 181
    const-string v4, "ro.secdirenc"

    const-string v6, "false"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0800fd

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, externalAlsoErasedSdCardKey:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .end local v1           #externalAlsoErasedSdCardKey:Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v3, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    .end local v0           #externalAlsoErased:Landroid/view/View;
    .end local v2           #externalOption:Landroid/view/View;
    :goto_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClear;->loadAccountList()V

    .line 201
    return-void

    .restart local v0       #externalAlsoErased:Landroid/view/View;
    .restart local v2       #externalOption:Landroid/view/View;
    :cond_2
    move v4, v5

    .line 189
    goto :goto_0

    .line 191
    .end local v0           #externalAlsoErased:Landroid/view/View;
    .end local v2           #externalOption:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v5, Lcom/android/OriginalSettings/MasterClear$2;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/MasterClear$2;-><init>(Lcom/android/OriginalSettings/MasterClear;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 204
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, state:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 24

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0800fe

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 210
    .local v8, accountsLabel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0800ff

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 211
    .local v11, contents:Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 215
    .local v12, context:Landroid/content/Context;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    .line 216
    .local v20, mgr:Landroid/accounts/AccountManager;
    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    .line 217
    .local v7, accounts:[Landroid/accounts/Account;
    array-length v5, v7

    .line 218
    .local v5, N:I
    if-nez v5, :cond_0

    .line 219
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v21, "layout_inflater"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 227
    .local v18, inflater:Landroid/view/LayoutInflater;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 228
    .local v14, descs:[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v14

    .line 230
    .local v4, M:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v5, :cond_6

    .line 231
    aget-object v6, v7, v16

    .line 232
    .local v6, account:Landroid/accounts/Account;
    const/4 v13, 0x0

    .line 233
    .local v13, desc:Landroid/accounts/AuthenticatorDescription;
    const/16 v19, 0x0

    .local v19, j:I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v4, :cond_1

    .line 234
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v22, v14, v19

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 235
    aget-object v13, v14, v19

    .line 239
    :cond_1
    if-nez v13, :cond_3

    .line 240
    const-string v21, "MasterClear"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No descriptor for account name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 233
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 244
    :cond_3
    const/16 v17, 0x0

    .line 246
    .local v17, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 247
    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 248
    .local v9, authContext:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 254
    .end local v9           #authContext:Landroid/content/Context;
    :cond_4
    :goto_4
    const v21, 0x7f040056

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 256
    .local v10, child:Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    if-eqz v17, :cond_5

    .line 258
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 260
    :cond_5
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 250
    .end local v10           #child:Landroid/widget/TextView;
    :catch_0
    move-exception v15

    .line 251
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "MasterClear"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No icon for account type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 263
    .end local v6           #account:Landroid/accounts/Account;
    .end local v13           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17           #icon:Landroid/graphics/drawable/Drawable;
    .end local v19           #j:I
    :cond_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .parameter "request"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b03d9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b03da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 111
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 112
    const-class v0, Lcom/android/OriginalSettings/MasterClearConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 113
    const v0, 0x7f0b03dc

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 114
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/OriginalSettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiui/preference/BasePreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 116
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 281
    const v0, 0x7f040055

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    .line 283
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClear;->establishInitialState()V

    .line 284
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClear;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 272
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    :cond_0
    return-void
.end method
