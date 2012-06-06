.class Lcom/android/OriginalSettings/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/LocationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/OriginalSettings/LocationSettings$1;->this$0:Lcom/android/OriginalSettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings$1;->this$0:Lcom/android/OriginalSettings/LocationSettings;

    #calls: Lcom/android/OriginalSettings/LocationSettings;->updateLocationToggles()V
    invoke-static {v0}, Lcom/android/OriginalSettings/LocationSettings;->access$000(Lcom/android/OriginalSettings/LocationSettings;)V

    .line 166
    return-void
.end method
