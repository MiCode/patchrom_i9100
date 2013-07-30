.class public Lcom/android/sec_settings/customizablekey/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/customizablekey/AppList$AlphaComparator;,
        Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;
    }
.end annotation


# instance fields
.field private mAppListAdapter:Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/sec_settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0, v4}, Lcom/android/sec_settings/customizablekey/AppList;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/sec_settings/customizablekey/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 57
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "pressed_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/sec_settings/customizablekey/AppList;->pressed_type:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/android/sec_settings/customizablekey/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    .line 60
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v6, LauncherIntent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/android/sec_settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 64
    .local v5, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

    const v3, 0x7f04007d

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;-><init>(Lcom/android/sec_settings/customizablekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/sec_settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

    .line 66
    invoke-virtual {p0}, Lcom/android/sec_settings/customizablekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 67
    .local v8, list_view:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/sec_settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v1, result_intent:Landroid/content/Intent;
    const-string v3, "CustomizableKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " app selected : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/sec_settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v3, "CustomizableKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " app title : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/sec_settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/sec_settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v3, "selected_app"

    iget-object v2, p0, Lcom/android/sec_settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v3, "selected_app_title"

    iget-object v2, p0, Lcom/android/sec_settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/sec_settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/sec_settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/sec_settings/customizablekey/AppList;->mAppListAdapter:Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/sec_settings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, app:Ljava/lang/String;
    const-string v2, "short"

    iget-object v3, p0, Lcom/android/sec_settings/customizablekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/sec_settings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "short_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/customizablekey/AppList;->finish()V

    .line 89
    return-void

    .line 84
    :cond_1
    const-string v2, "long"

    iget-object v3, p0, Lcom/android/sec_settings/customizablekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/sec_settings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
