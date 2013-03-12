.class Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Led"
.end annotation


# instance fields
.field private mBatteryCharging:Z

.field private mBatteryFull:Z

.field private mBatteryFullARGB:I

.field private mBatteryLedOff:I

.field private mBatteryLedOn:I

.field private mBatteryLight:Lcom/android/server/LightsService$Light;

.field private mBatteryLow:Z

.field private mBatteryLowARGB:I

.field private mBatteryMediumARGB:I

.field private mLightsService:Lcom/android/server/LightsService;

.field private mTurnOn:Z

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 886
    iput-object p3, p0, Lcom/android/server/BatteryService$Led;->mLightsService:Lcom/android/server/LightsService;

    .line 887
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 889
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 891
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 893
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 895
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 897
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 899
    return-void
.end method


# virtual methods
.method updateLightsLocked()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 905
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 906
    .local v3, level:I
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)I

    move-result v4

    .line 930
    .local v4, status:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 931
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int v1, v5, v6

    .line 933
    .local v1, currentMinutes:I
    const/4 v2, 0x0

    .line 935
    .local v2, dormantModeOn:Z
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 936
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 937
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dormant mode is always on"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v2, 0x1

    .line 951
    :cond_0
    :goto_0
    const/4 v5, 0x4

    if-ne v5, v4, :cond_5

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v2, :cond_5

    .line 952
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v5, v7, v9, v7, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 953
    iput-boolean v8, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 954
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "turn on LED for not charging"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1
    :goto_1
    return-void

    .line 939
    :cond_2
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantStartMinutes:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantEndMinutes:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v6

    if-gt v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantStartMinutes:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v5

    if-gt v5, v1, :cond_3

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantEndMinutes:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v5

    if-gt v1, v5, :cond_3

    .line 942
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dormant mode is on"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v2, 0x1

    goto :goto_0

    .line 944
    :cond_3
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantStartMinutes:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantEndMinutes:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v6

    if-le v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantStartMinutes:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v5

    if-le v5, v1, :cond_4

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantEndMinutes:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v5

    if-gt v1, v5, :cond_0

    .line 946
    :cond_4
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dormant mode is on"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v2, 0x1

    goto :goto_0

    .line 955
    :cond_5
    const/4 v5, 0x2

    if-ne v5, v4, :cond_6

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_6

    .line 956
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/16 v6, 0xa

    invoke-virtual {v5, v7, v6, v7, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 957
    iput-boolean v8, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 958
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "turn on LED for charging"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 959
    :cond_6
    const/4 v5, 0x5

    if-ne v5, v4, :cond_7

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v2, :cond_7

    .line 960
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/16 v6, 0xe

    invoke-virtual {v5, v7, v6, v7, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 961
    iput-boolean v8, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 962
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "turn on LED for fully charged"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 963
    :cond_7
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)I

    move-result v5

    if-gt v3, v5, :cond_8

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v2, :cond_8

    .line 964
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/16 v6, 0xd

    invoke-virtual {v5, v7, v6, v7, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 965
    iput-boolean v8, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 966
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "turn on LED for low battery"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 967
    :cond_8
    iget-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    if-eqz v5, :cond_1

    .line 968
    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v5}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 969
    iput-boolean v7, p0, Lcom/android/server/BatteryService$Led;->mTurnOn:Z

    .line 970
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "turn off LED"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
