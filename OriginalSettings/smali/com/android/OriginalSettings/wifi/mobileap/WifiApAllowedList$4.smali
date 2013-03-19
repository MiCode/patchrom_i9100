.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$400(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 179
    return-void
.end method
