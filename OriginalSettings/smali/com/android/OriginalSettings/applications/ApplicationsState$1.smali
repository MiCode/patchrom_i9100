.class final Lcom/android/settings/applications/ApplicationsState$1;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/ApplicationsState$AppEntry;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 166
    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-object v1, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v0, v1, :cond_1

    .line 167
    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 169
    :goto_0
    return v0

    .line 167
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    check-cast p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .end local p1
    check-cast p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState$1;->compare(Lcom/android/settings/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/ApplicationsState$AppEntry;)I

    move-result v0

    return v0
.end method
