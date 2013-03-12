.class public Landroid/content/pm/ResolveInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "ResolveInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "pm"

    .prologue
    .line 328
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 374
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    .line 329
    iput-object p1, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 330
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 10
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v9, 0x0

    .line 333
    const-string v2, "com.sec.android.display_priority"

    .line 335
    .local v2, displayPriorityKey:Ljava/lang/String;
    iget-object v7, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 336
    .local v5, sa:Ljava/lang/CharSequence;
    if-nez v5, :cond_0

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 337
    :cond_0
    iget-object v7, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 338
    .local v6, sb:Ljava/lang/CharSequence;
    if-nez v6, :cond_1

    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 340
    :cond_1
    const/4 v3, 0x0

    .line 341
    .local v3, ia:I
    const/4 v0, 0x0

    .line 342
    .local v0, ai_A:Landroid/content/pm/ApplicationInfo;
    if-eqz p1, :cond_3

    .line 343
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_6

    .line 344
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 349
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    .line 350
    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.sec.android.display_priority"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 354
    :cond_3
    const/4 v4, 0x0

    .line 355
    .local v4, ib:I
    const/4 v1, 0x0

    .line 356
    .local v1, ai_B:Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_5

    .line 357
    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_7

    .line 358
    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 363
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_5

    .line 364
    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.sec.android.display_priority"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 368
    :cond_5
    if-eq v3, v4, :cond_8

    .line 369
    sub-int v7, v4, v3

    .line 371
    :goto_2
    return v7

    .line 345
    .end local v1           #ai_B:Landroid/content/pm/ApplicationInfo;
    .end local v4           #ib:I
    :cond_6
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_2

    .line 346
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 359
    .restart local v1       #ai_B:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #ib:I
    :cond_7
    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_4

    .line 360
    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 371
    :cond_8
    iget-object v7, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 326
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
