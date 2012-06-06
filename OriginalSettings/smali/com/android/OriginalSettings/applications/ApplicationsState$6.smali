.class final Lcom/android/OriginalSettings/applications/ApplicationsState$6;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v0}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$6;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$6;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ApplicationsState$6;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->init()V

    .line 217
    return-void
.end method
