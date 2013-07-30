.class public Lcom/android/sec_settings/HomeSettings;
.super Landroid/app/ListFragment;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/HomeSettings$HomeAdapter;
    }
.end annotation


# instance fields
.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentHome:I

.field private mCurrentMode:I

.field mHomeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeIntent:Landroid/content/Intent;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSetupButton:Landroid/widget/Button;

.field private mSetupMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/HomeSettings;->mSetupMode:Z

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/HomeSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/sec_settings/HomeSettings;->changeHome(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sec_settings/HomeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/sec_settings/HomeSettings;->startHome()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/HomeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/HomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/sec_settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private changeHome(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 223
    const-string v1, "HomeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeHome "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 225
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/HomeSettings;->setPreferredHome(Landroid/content/pm/ResolveInfo;)V

    .line 226
    iput p1, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 230
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/sec_settings/HomeSettings;->setEasymode(Z)V

    goto :goto_0

    .line 233
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/sec_settings/HomeSettings;->setEasymode(Z)V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 301
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 305
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v1, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, componentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 297
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setEasymode(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 271
    const-string v2, "HomeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEasymode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 273
    .local v1, switchValue:I
    :goto_0
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "easymode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const-string v2, "easymode_from"

    const-string v3, "settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Lcom/android/sec_settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    return-void

    .line 272
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #switchValue:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startHome()V
    .locals 3

    .prologue
    .line 281
    const-string v1, "HomeSettings"

    const-string v2, "startHome"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, homeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/HomeSettings;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void
.end method


# virtual methods
.method public getCurrentHome()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 173
    const-string v0, "HomeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 175
    new-instance v0, Lcom/android/sec_settings/HomeSettings$HomeAdapter;

    invoke-virtual {p0}, Lcom/android/sec_settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070033

    iget-object v3, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/sec_settings/HomeSettings$HomeAdapter;-><init>(Lcom/android/sec_settings/HomeSettings;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/HomeSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v2, "HomeSettings"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/sec_settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 87
    invoke-virtual {p0}, Lcom/android/sec_settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    .line 88
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    .line 91
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mHomeIntent:Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mHomeIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/sec_settings/HomeSettings;->mHomeIntent:Landroid/content/Intent;

    const v4, 0x10040

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    .line 97
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    const-string v3, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v3}, Lcom/android/sec_settings/HomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    const-string v3, "com.sec.android.app.launcher"

    invoke-direct {p0, v3}, Lcom/android/sec_settings/HomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    const-string v3, "com.sec.android.app.launcher"

    invoke-direct {p0, v3}, Lcom/android/sec_settings/HomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 104
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.nttdocomo.android.paletteui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.setupwizard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 115
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const-string v2, "HomeSettings"

    const-string v3, "Remove secsetupwizard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 123
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 124
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.setupwizard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    const-string v2, "HomeSettings"

    const-string v3, "Remove googlesetupwizard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 122
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 129
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 133
    const-string v0, "HomeSettings"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v0, 0x7f04006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 180
    const-string v3, "HomeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v3, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    if-ne v3, p3, :cond_0

    .line 220
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 189
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-boolean v3, p0, Lcom/android/sec_settings/HomeSettings;->mSetupMode:Z

    if-eqz v3, :cond_1

    .line 190
    invoke-direct {p0, p3}, Lcom/android/sec_settings/HomeSettings;->changeHome(I)V

    .line 191
    iget-object v3, p0, Lcom/android/sec_settings/HomeSettings;->mSetupButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/sec_settings/HomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/sec_settings/HomeSettings$HomeAdapter;

    invoke-virtual {v3}, Lcom/android/sec_settings/HomeSettings$HomeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/sec_settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, label:Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 207
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090cc7

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/sec_settings/HomeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/sec_settings/HomeSettings$1;

    invoke-direct {v5, p0, p3}, Lcom/android/sec_settings/HomeSettings$1;-><init>(Lcom/android/sec_settings/HomeSettings;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 218
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 197
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :pswitch_0
    const v3, 0x7f090cc8

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/HomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    goto :goto_1

    .line 200
    :pswitch_1
    const v3, 0x7f090cca

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/HomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    goto :goto_1

    .line 203
    :pswitch_2
    const v3, 0x7f090ccc

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/HomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 138
    const-string v2, "HomeSettings"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 142
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/sec_settings/HomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    iput v0, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    .line 148
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string v2, "com.sec.android.app.launcher"

    invoke-direct {p0, v2}, Lcom/android/sec_settings/HomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentMode:I

    .line 150
    iget v2, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentMode:I

    if-nez v2, :cond_5

    .line 151
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    .line 157
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    if-eq v2, v5, :cond_6

    iget-boolean v2, p0, Lcom/android/sec_settings/HomeSettings;->mSetupMode:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mSetupButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    .line 158
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mSetupButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/sec_settings/HomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 166
    const-string v2, "HomeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentHome: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/sec_settings/HomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/sec_settings/HomeSettings$HomeAdapter;

    invoke-virtual {v2}, Lcom/android/sec_settings/HomeSettings$HomeAdapter;->notifyDataSetChanged()V

    .line 169
    :cond_3
    return-void

    .line 140
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_5
    iput v4, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    goto :goto_1

    .line 159
    :cond_6
    iget v2, p0, Lcom/android/sec_settings/HomeSettings;->mCurrentHome:I

    if-ne v2, v5, :cond_2

    iget-boolean v2, p0, Lcom/android/sec_settings/HomeSettings;->mSetupMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mSetupButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 161
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/sec_settings/HomeSettings;->changeHome(I)V

    .line 162
    iget-object v2, p0, Lcom/android/sec_settings/HomeSettings;->mSetupButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method public setButton(Landroid/widget/Button;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 239
    const-string v0, "HomeSettings"

    const-string v1, "setButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iput-object p1, p0, Lcom/android/sec_settings/HomeSettings;->mSetupButton:Landroid/widget/Button;

    .line 241
    iget-object v0, p0, Lcom/android/sec_settings/HomeSettings;->mSetupButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/HomeSettings;->mSetupMode:Z

    .line 244
    return-void
.end method

.method public setPreferredHome(Landroid/content/pm/ResolveInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    .line 247
    const-string v5, "HomeSettings"

    const-string v6, "setPreferredHome"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 251
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 253
    iget-object v5, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/ComponentName;

    .line 254
    .local v0, components:[Landroid/content/ComponentName;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v4, target:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 257
    iget-object v5, p0, Lcom/android/sec_settings/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 258
    .local v2, home:Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v3

    .line 261
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/sec_settings/HomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    iget-object v5, p0, Lcom/android/sec_settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 256
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v2           #home:Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/sec_settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v6, p1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v5, v1, v6, v0, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 268
    return-void
.end method
