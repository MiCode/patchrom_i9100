.class final Lcom/android/server/am/TaskAccessInfo$SubTask;
.super Ljava/lang/Object;
.source "TaskAccessInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskAccessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubTask"
.end annotation


# instance fields
.field activity:Lcom/android/server/am/ActivityRecord;

.field index:I

.field thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
