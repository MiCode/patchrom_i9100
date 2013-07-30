.class public Lcom/android/sec_settings/widget/HomeSettingsWidgetProvider;
.super Landroid/app/Activity;
.source "HomeSettingsWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupShortcut()V
    .locals 5

    .prologue
    .line 40
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, shortcutIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    const v3, 0x7f02032a

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 48
    .local v0, iconResource:Landroid/os/Parcelable;
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    const-string v3, "android.intent.extra.shortcut.NAME"

    const v4, 0x7f090cc6

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/widget/HomeSettingsWidgetProvider;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/sec_settings/widget/HomeSettingsWidgetProvider;->setResult(ILandroid/content/Intent;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/HomeSettingsWidgetProvider;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 19
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/android/sec_settings/widget/HomeSettingsWidgetProvider;->setupShortcut()V

    .line 23
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/HomeSettingsWidgetProvider;->finish()V

    .line 35
    :goto_0
    return-void

    .line 29
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 30
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$HomeSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v2, "noaction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/widget/HomeSettingsWidgetProvider;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/sec_settings/widget/HomeSettingsWidgetProvider;->finish()V

    goto :goto_0
.end method
