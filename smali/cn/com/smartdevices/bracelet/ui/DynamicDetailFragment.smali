.class public Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_MODIFY_SLEEP_DAY:Ljava/lang/String; = "CurrentDay"

.field public static final KEY_MODIFY_SLEEP_TIME_CURRENT_HOUR:Ljava/lang/String; = "CurrentHour"

.field public static final KEY_MODIFY_SLEEP_TIME_CURRENT_MINUTE:Ljava/lang/String; = "CurrentMinute"

.field public static final KEY_MODIFY_SLEEP_TIME_LIMIT_END:Ljava/lang/String; = "LimitEnd"

.field public static final KEY_MODIFY_SLEEP_TIME_LIMIT_START:Ljava/lang/String; = "LimitStart"

.field public static final KEY_MODIFY_SLEEP_TIME_MAX_HOUR:Ljava/lang/String; = "MaxHour"

.field public static final KEY_MODIFY_SLEEP_TIME_MIN_HOUR:Ljava/lang/String; = "MinHour"

.field public static final KEY_MODIFY_SLEEP_TYPE:Ljava/lang/String; = "Type"

.field public static final MODIFY_SLEEP_TYPE_END:I = 0x10

.field public static final MODIFY_SLEEP_TYPE_START:I = 0x1

.field public static final REF_ACTION:Ljava/lang/String; = "Action"

.field private static final a:Ljava/lang/String; = "Dynamic.Detail"

.field public static sRefreshHander:Landroid/os/Handler;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Landroid/animation/Animator;

.field private F:Landroid/animation/Animator;

.field private G:Landroid/animation/Animator;

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:I

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/GestureDetector;

.field private p:Lcn/com/smartdevices/bracelet/DataManager;

.field private q:Lcn/com/smartdevices/bracelet/model/SportDay;

.field private r:Lcn/com/smartdevices/bracelet/model/SportDay;

.field private s:Lcn/com/smartdevices/bracelet/model/SportDay;

.field private t:Lcn/com/smartdevices/bracelet/model/SportDay;

.field private u:Lcn/com/smartdevices/bracelet/model/SportDay;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->p:Lcn/com/smartdevices/bracelet/DataManager;

    return-void
.end method

.method static synthetic A(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->F:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Ljava/util/Calendar;)I
    .locals 1

    invoke-static {p1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/Calendar;)I
    .locals 2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method private a(IIJZ)Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->animRefresh()Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->setFirstAnim(Landroid/animation/Animator;J)V

    if-nez p5, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/View;

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b:Landroid/view/View;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    aput-object v0, v1, v2

    invoke-static {p1, p2, v1}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->animColorTrans(II[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x2

    div-long v1, p3, v1

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;J)V

    :cond_0
    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/Q;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/Q;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;FFLandroid/view/View;)Landroid/animation/Animator;
    .locals 4

    const/4 v3, 0x2

    const-string v0, "alpha"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "scaleY"

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {p3, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->setFirstAnim(Landroid/animation/Animator;)V

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    const/4 v3, 0x2

    const-string v0, "alpha"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "scaleY"

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->setFirstAnim(Landroid/animation/Animator;)V

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/R;

    invoke-direct {v1, p0, p1}, Lcn/com/smartdevices/bracelet/ui/R;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Lcn/com/smartdevices/bracelet/DataManager;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->p:Lcn/com/smartdevices/bracelet/DataManager;

    return-object v0
.end method

.method private a(Lcn/com/smartdevices/bracelet/model/DaySportData;)Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;
    .locals 14

    const/4 v13, 0x4

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v12, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getAnalysisData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v1, v2

    move-object v3, v2

    move v4, v0

    move v5, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;-><init>()V

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_8

    iput-object v7, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;->sleepData:Ljava/util/List;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/SportData;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SportData;->getSportMode()I

    move-result v6

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SportData;->getStep()I

    move-result v10

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SportData;->getTimeIndex()I

    move-result v0

    if-ne v5, v6, :cond_2

    const/16 v11, 0x59f

    if-ne v0, v11, :cond_9

    :cond_2
    if-eqz v3, :cond_3

    iget v5, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->index:I

    sub-int v5, v0, v5

    iput v5, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->length:I

    move-object v3, v2

    :cond_3
    if-eq v6, v13, :cond_4

    const/4 v5, 0x5

    if-eq v6, v5, :cond_4

    const/4 v5, 0x7

    if-eq v6, v5, :cond_4

    const/16 v5, 0x64

    if-ne v6, v5, :cond_5

    :cond_4
    new-instance v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;

    invoke-direct {v3}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;-><init>()V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->index:I

    iput v12, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->length:I

    sparse-switch v6, :sswitch_data_0

    :cond_5
    :goto_2
    if-lez v10, :cond_7

    div-int/lit8 v5, v0, 0x3c

    if-eq v5, v4, :cond_6

    new-instance v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v5, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;->index:I

    iput v10, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;->step:I

    move-object v1, v0

    move v4, v5

    move v5, v6

    goto :goto_0

    :sswitch_0
    const/4 v5, 0x2

    iput v5, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->mode:I

    goto :goto_2

    :sswitch_1
    const/4 v5, 0x3

    iput v5, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->mode:I

    goto :goto_2

    :sswitch_2
    iput v12, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->mode:I

    goto :goto_2

    :sswitch_3
    iput v13, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->mode:I

    goto :goto_2

    :cond_6
    iget v0, v1, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;->step:I

    add-int/2addr v0, v10

    iput v0, v1, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;->step:I

    :cond_7
    move v5, v6

    goto :goto_0

    :cond_8
    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    if-ne v1, v12, :cond_0

    iput-object v8, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;->stepData:Ljava/util/List;

    goto :goto_1

    :cond_9
    move v6, v5

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/model/DaySportData;)Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;
    .locals 14

    const/4 v13, 0x4

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v12, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getAnalysisData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v1, v2

    move-object v3, v2

    move v4, v0

    move v5, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;-><init>()V

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_8

    iput-object v7, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;->sleepData:Ljava/util/List;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/SportData;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SportData;->getSportMode()I

    move-result v6

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SportData;->getStep()I

    move-result v10

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/SportData;->getTimeIndex()I

    move-result v0

    if-ne v5, v6, :cond_2

    const/16 v11, 0x59f

    if-ne v0, v11, :cond_9

    :cond_2
    if-eqz v3, :cond_3

    iget v5, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->index:I

    sub-int v5, v0, v5

    iput v5, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->length:I

    move-object v3, v2

    :cond_3
    if-eq v6, v13, :cond_4

    const/4 v5, 0x5

    if-eq v6, v5, :cond_4

    const/4 v5, 0x7

    if-eq v6, v5, :cond_4

    const/16 v5, 0x64

    if-ne v6, v5, :cond_5

    :cond_4
    new-instance v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;

    invoke-direct {v3}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;-><init>()V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->index:I

    iput v12, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->length:I

    sparse-switch v6, :sswitch_data_0

    :cond_5
    :goto_2
    if-lez v10, :cond_7

    div-int/lit8 v5, v0, 0x3c

    if-eq v5, v4, :cond_6

    new-instance v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v5, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;->index:I

    iput v10, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;->step:I

    move-object v1, v0

    move v4, v5

    move v5, v6

    goto :goto_0

    :sswitch_0
    const/4 v5, 0x2

    iput v5, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->mode:I

    goto :goto_2

    :sswitch_1
    const/4 v5, 0x3

    iput v5, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->mode:I

    goto :goto_2

    :sswitch_2
    iput v12, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->mode:I

    goto :goto_2

    :sswitch_3
    iput v13, v3, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartSleepData;->mode:I

    goto :goto_2

    :cond_6
    iget v0, v1, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;->step:I

    add-int/2addr v0, v10

    iput v0, v1, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartStepData;->step:I

    :cond_7
    move v5, v6

    goto :goto_0

    :cond_8
    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    if-ne v1, v12, :cond_0

    iput-object v8, v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView$DynamicDetailChartData;->stepData:Ljava/util/List;

    goto :goto_1

    :cond_9
    move v6, v5

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method private static a(Lcn/com/smartdevices/bracelet/model/SportDay;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/com/smartdevices/bracelet/model/SportDay;->mon:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/model/SportDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/N;

    invoke-direct {v1, p0, v0}, Lcn/com/smartdevices/bracelet/ui/N;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/O;

    invoke-direct {v1, p0, v0}, Lcn/com/smartdevices/bracelet/ui/O;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private a(ILcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 12

    const/4 v6, -0x1

    const/4 v0, 0x0

    const/16 v2, 0x17

    const/16 v7, -0x18

    const/high16 v5, -0x80000000

    const-string v1, "Dynamic.Detail"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Show Modify Sleep Time : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->p:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v1, p2}, Lcn/com/smartdevices/bracelet/DataManager;->get(Lcn/com/smartdevices/bracelet/model/SportDay;)Lcn/com/smartdevices/bracelet/model/DaySportData;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getSleepInfo()Lcn/com/smartdevices/bracelet/analysis/SleepInfo;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_8

    new-instance v1, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;

    invoke-direct {v1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;-><init>()V

    move-object v11, v1

    :goto_1
    sparse-switch p1, :sswitch_data_0

    move-object v1, v0

    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p2, v6}, Lcn/com/smartdevices/bracelet/model/SportDay;->addDay(I)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(Ljava/util/Calendar;)I

    move-result v0

    :goto_3
    invoke-virtual {p2, v6}, Lcn/com/smartdevices/bracelet/model/SportDay;->addDay(I)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(Ljava/util/Calendar;)I

    move-result v4

    :goto_4
    if-gez v0, :cond_4

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v0, v0, 0x3c

    if-eqz v0, :cond_7

    add-int/lit8 v0, v0, 0x3c

    move v9, v1

    move v10, v0

    :goto_5
    add-int/lit8 v8, v9, -0x6

    add-int/lit8 v0, v9, 0x6

    if-ge v8, v7, :cond_0

    move v8, v7

    :cond_0
    if-le v0, v2, :cond_1

    move v0, v2

    :cond_1
    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->getDynamicData()Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getUserSleepModify(Lcn/com/smartdevices/bracelet/model/SportDay;)Lcn/com/smartdevices/bracelet/chart/util/ChartData$UserSleepModify;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_1

    move v4, v5

    move v6, v5

    :goto_6
    invoke-virtual {v11}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getHasSleep()Z

    move-result v11

    if-nez v11, :cond_6

    if-ne v3, v5, :cond_6

    if-ne v1, v5, :cond_5

    move v4, v5

    move v6, v5

    move v0, v7

    :goto_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "CurrentDay"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "Type"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "MinHour"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "MaxHour"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CurrentHour"

    invoke-virtual {v1, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CurrentMinute"

    invoke-virtual {v1, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LimitStart"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LimitEnd"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcn/com/smartdevices/bracelet/ui/DynamicDetailSleepModifyFragment;

    invoke-static {v0, v2, v1}, Lcn/com/smartdevices/bracelet/ui/DimPanelFragment;->showPanel(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    :sswitch_0
    invoke-virtual {v11}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v11}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getStopDate()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {v11}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getStopDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v11}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getStartDate()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    invoke-static {v3}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b(Ljava/util/Calendar;)I

    move-result v0

    goto/16 :goto_3

    :cond_3
    invoke-static {v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b(Ljava/util/Calendar;)I

    move-result v4

    goto/16 :goto_4

    :cond_4
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    move v9, v1

    move v10, v0

    goto/16 :goto_5

    :sswitch_2
    iget v3, v6, Lcn/com/smartdevices/bracelet/chart/util/ChartData$UserSleepModify;->sleepStart:I

    iget v1, v6, Lcn/com/smartdevices/bracelet/chart/util/ChartData$UserSleepModify;->sleepEnd:I

    move v6, v5

    goto :goto_6

    :sswitch_3
    iget v3, v6, Lcn/com/smartdevices/bracelet/chart/util/ChartData$UserSleepModify;->sleepEnd:I

    iget v1, v6, Lcn/com/smartdevices/bracelet/chart/util/ChartData$UserSleepModify;->sleepStart:I

    move v6, v4

    move v4, v5

    goto :goto_6

    :cond_5
    move v0, v7

    goto :goto_7

    :cond_6
    move v2, v0

    move v0, v8

    goto :goto_7

    :cond_7
    move v9, v1

    move v10, v0

    goto/16 :goto_5

    :cond_8
    move-object v11, v1

    goto/16 :goto_1

    :cond_9
    move-object v1, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(IZ)V
    .locals 11

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    const v0, 0x7f0c010f

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->f:Landroid/widget/ImageButton;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->h:Landroid/view/View;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->g:Landroid/view/View;

    iget v6, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->D:I

    iget v5, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->C:I

    const/16 v1, 0x28a

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v7, Lcn/com/smartdevices/bracelet/ui/N;

    invoke-direct {v7, p0, v0}, Lcn/com/smartdevices/bracelet/ui/N;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v7, Lcn/com/smartdevices/bracelet/ui/O;

    invoke-direct {v7, p0, v0}, Lcn/com/smartdevices/bracelet/ui/O;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v7, "mode"

    const-string v8, "EventModeSleep"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "EventDynamicDetail"

    invoke-static {v7, v8, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    move v10, v1

    move-object v1, v3

    move v3, v10

    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->setMode(I)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->getDensity()F

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->infoSwitch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    :goto_1
    int-to-long v1, v3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->animRefresh()Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->setFirstAnim(Landroid/animation/Animator;J)V

    if-nez p2, :cond_0

    const/4 v0, 0x2

    new-array v3, v0, [Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b:Landroid/view/View;

    aput-object v0, v3, v4

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    aput-object v0, v3, v9

    invoke-static {v6, v5, v3}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->animColorTrans(II[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v5, 0x2

    div-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;J)V

    :cond_0
    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/Q;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/Q;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->E:Landroid/animation/Animator;

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->sRefreshHander:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    if-ne p1, v9, :cond_4

    const-string v0, "DynamicView"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0c0112

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(I)V

    :cond_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->f:Landroid/widget/ImageButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->g:Landroid/view/View;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->h:Landroid/view/View;

    iget v5, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->C:I

    iget v3, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->D:I

    const/16 v0, 0x226

    iget-object v6, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->l:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "mode"

    const-string v8, "EventModeStep"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "EventDynamicDetail"

    invoke-static {v7, v8, v6}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    move v6, v5

    move v5, v3

    move v3, v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->animInfoSwitch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    goto/16 :goto_1

    :cond_4
    move v3, v4

    move-object v1, v2

    move v5, v4

    move v6, v4

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f07002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b:Landroid/view/View;

    const v0, 0x7f07002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->d:Landroid/widget/TextView;

    const v0, 0x7f07009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->e:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->g:Landroid/view/View;

    const v0, 0x7f0700ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->h:Landroid/view/View;

    const v0, 0x7f0700a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->i:Landroid/view/View;

    const v0, 0x7f0700a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->j:Landroid/view/View;

    const v0, 0x7f07009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    const v0, 0x7f07009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f0700b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->m:Landroid/view/View;

    const v0, 0x7f0700b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->n:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/M;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/M;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;-><init>()V

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/P;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/P;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)V

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader;->setLoadCallback(Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->setDataLoader(Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0, v4}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->setScrollable(Z)V

    const-string v0, "DynamicView"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0, v3}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->setScrollable(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->attach()V

    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x41f00000

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/view/TouchDelegate;

    invoke-direct {v0, v1, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x50

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    const v1, 0x3f333333

    invoke-direct {v0, v9, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/analysis/SleepInfo;IILandroid/view/View;)V
    .locals 9

    const/16 v8, 0xe

    const v0, 0x7f0700b0

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700b1

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700b2

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700b5

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0700b8

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0700b9

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getSleepCount()I

    move-result v7

    invoke-static {v6, v7, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getNonRemCount()I

    move-result v6

    invoke-static {v0, v6, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getRemCount()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getAwakeCount()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/analysis/StageSteps;Landroid/view/View;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v0, 0x7f0700a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700ab

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700aa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0700ad

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0700ae

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, p1, Lcn/com/smartdevices/bracelet/analysis/StageSteps;->steps:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p1, Lcn/com/smartdevices/bracelet/analysis/StageSteps;->count:I

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLengthHourMin(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v8

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    aget-object v0, v0, v9

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p1, Lcn/com/smartdevices/bracelet/analysis/StageSteps;->distance:I

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatDistance(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v0, v0, v9

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    aget-object v3, v0, v8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcn/com/smartdevices/bracelet/analysis/StepsInfo;Landroid/view/View;)V
    .locals 9

    const/16 v8, 0xe

    const v0, 0x7f0700bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700bc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700ae

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700bd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0700bf

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0700c0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0700c1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getDistance()I

    move-result v7

    invoke-static {v0, v7}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatDistance(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getCalories()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getActMinutes()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsTimeCount()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getRunTimeCount()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;Landroid/view/View;)V
    .locals 8

    const v7, 0x7f0700a3

    const v0, 0x7f0700a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700a4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700a5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->index:I

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->index:I

    iget v5, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->scope:I

    add-int/2addr v4, v5

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget v5, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->value:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const v5, 0x7f0c0113

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const v5, 0x7f0c0114

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget v5, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->index:I

    iget v6, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->K:I

    if-ne v5, v6, :cond_0

    const v5, 0x7f0c0116

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget v5, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->index:I

    iget v6, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->scope:I

    add-int/2addr v5, v6

    iget v6, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->L:I

    if-ne v5, v6, :cond_1

    const v5, 0x7f0c0117

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v5, 0x7f0c0115

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0c019f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;)V
    .locals 6

    const v5, 0x7f0c011d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Dynamic.Detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Sync Status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/Utils;->getSyncTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->d:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->d:Landroid/widget/TextView;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v0, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    aput-object v0, v2, v3

    invoke-virtual {p0, v5, v2}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->K:I

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->F:Landroid/animation/Animator;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x41f00000

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/ChartUtil;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/view/TouchDelegate;

    invoke-direct {v0, v1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/analysis/SleepInfo;IILandroid/view/View;)V
    .locals 9

    const/16 v8, 0xe

    const v0, 0x7f0700b0

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700b1

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700b2

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700b5

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0700b8

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0700b9

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getSleepCount()I

    move-result v7

    invoke-static {v6, v7, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getNonRemCount()I

    move-result v6

    invoke-static {v0, v6, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getRemCount()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getAwakeCount()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/analysis/StageSteps;Landroid/view/View;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v0, 0x7f0700a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700ab

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700aa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0700ad

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0700ae

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, p1, Lcn/com/smartdevices/bracelet/analysis/StageSteps;->steps:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p1, Lcn/com/smartdevices/bracelet/analysis/StageSteps;->count:I

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLengthHourMin(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v8

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    aget-object v0, v0, v9

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p1, Lcn/com/smartdevices/bracelet/analysis/StageSteps;->distance:I

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatDistance(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v0, v0, v9

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    aget-object v3, v0, v8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/analysis/StepsInfo;Landroid/view/View;)V
    .locals 9

    const/16 v8, 0xe

    const v0, 0x7f0700bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700bc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700ae

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700bd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0700bf

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0700c0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0700c1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getDistance()I

    move-result v7

    invoke-static {v0, v7}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatDistance(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getCalories()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getActMinutes()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsTimeCount()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getRunTimeCount()I

    move-result v1

    invoke-static {v0, v1, v8}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTimeLength(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;ILandroid/view/View;)V
    .locals 8

    const v7, 0x7f0700a3

    const v0, 0x7f0700a2

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700a4

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700a5

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->index:I

    invoke-static {v3}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->index:I

    iget v5, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->scope:I

    add-int/2addr v4, v5

    invoke-static {v4}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget v5, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->value:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const v5, 0x7f0c0113

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const v5, 0x7f0c0114

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget v5, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->index:I

    iget v6, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->K:I

    if-ne v5, v6, :cond_0

    const v5, 0x7f0c0116

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget v5, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->index:I

    iget v6, p1, Lcn/com/smartdevices/bracelet/chart/base/BarChart$BarItem;->scope:I

    add-int/2addr v5, v6

    iget v6, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->L:I

    if-ne v5, v6, :cond_1

    const v5, 0x7f0c0117

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v5, 0x7f0c0115

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0c019f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->q:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->H:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Ljava/util/Calendar;)I
    .locals 1

    invoke-static {p1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method private static b(Ljava/util/Calendar;)I
    .locals 2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static b(Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    const/4 v3, 0x2

    const-string v0, "alpha"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "scaleY"

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->setFirstAnim(Landroid/animation/Animator;)V

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private b()Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;
    .locals 1

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/P;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/P;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)V

    return-object v0
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->r:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-object v0
.end method

.method private b(I)V
    .locals 12

    const v8, 0x7f0c003f

    const v5, 0x7f0c017c

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DataManager;->getCurDay()Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v3

    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/com/smartdevices/bracelet/DataManager;->get(Lcn/com/smartdevices/bracelet/model/SportDay;)Lcn/com/smartdevices/bracelet/model/DaySportData;

    move-result-object v0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->getDynamicData()Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepTime()I

    move-result v1

    new-instance v2, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v2, v11}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>(I)V

    const v3, 0x7f0c0151

    invoke-virtual {p0, v3}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->p:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/DataManager;->getCurDay()Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->r:Lcn/com/smartdevices/bracelet/model/SportDay;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->r:Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/com/smartdevices/bracelet/model/SportDay;->formatStringDay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->time:Ljava/lang/String;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepDeepTime()I

    move-result v1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepTime()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepStartDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepStopDate()Ljava/util/Date;

    move-result-object v0

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const v6, 0x7f0c0161

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    div-int/lit8 v8, v1, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    div-int/lit8 v1, v3, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v11

    const/4 v1, 0x3

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x4

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x5

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {p0, v6, v7}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->description:Ljava/lang/String;

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcn/com/smartdevices/bracelet/ui/ShareActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "share_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    if-ne p1, v9, :cond_5

    new-instance v2, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v2}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>()V

    const-string v1, "DynamicView"

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->w:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Lcn/com/smartdevices/bracelet/model/ShareData;->setType(I)V

    invoke-virtual {p0, v5}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->J:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    const v1, 0x7f0c0111

    new-array v4, v9, [Ljava/lang/Object;

    const v5, 0x7f0c001d

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->x:I

    invoke-static {v7}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->y:I

    invoke-static {v7}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v1, v4}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->A:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->content:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->contentUnit:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->B:I

    invoke-static {v1, v4}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatDistance(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v1, v10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->description:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->formatStringDay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->time:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, v5}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    const v0, 0x7f0c01b7

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v5}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getStepsInfo()Lcn/com/smartdevices/bracelet/analysis/StepsInfo;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;-><init>()V

    :goto_3
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getCalories()I

    move-result v1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getDaySportGoalSteps()I

    move-result v2

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getDistance()I

    move-result v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatDistance(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v4, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v4, v9

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c0158

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-virtual {p0, v5, v6}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v4

    if-le v2, v4, :cond_4

    new-instance v2, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v2, v9}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>(I)V

    const v4, 0x7f0c0157

    invoke-virtual {p0, v4}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c0091

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->content:Ljava/lang/String;

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->description:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->contentUnit:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getStepsInfo()Lcn/com/smartdevices/bracelet/analysis/StepsInfo;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    new-instance v2, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v2, v10}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>(I)V

    const v4, 0x7f0c0155

    invoke-virtual {p0, v4}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c0090

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->L:I

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->G:Landroid/animation/Animator;

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->r:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-void
.end method

.method private c(Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    const/4 v3, 0x2

    const-string v0, "alpha"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "scaleY"

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->setFirstAnim(Landroid/animation/Animator;)V

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;)V

    invoke-static {v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->addAnim(Landroid/animation/Animator;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil$AnimSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/R;

    invoke-direct {v1, p0, p1}, Lcn/com/smartdevices/bracelet/ui/R;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private c(I)Lcn/com/smartdevices/bracelet/model/ShareData;
    .locals 12

    const v8, 0x7f0c003f

    const v5, 0x7f0c017c

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DataManager;->getCurDay()Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v3

    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/com/smartdevices/bracelet/DataManager;->get(Lcn/com/smartdevices/bracelet/model/SportDay;)Lcn/com/smartdevices/bracelet/model/DaySportData;

    move-result-object v0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->getDynamicData()Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepTime()I

    move-result v1

    new-instance v2, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v2, v11}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>(I)V

    const v3, 0x7f0c0151

    invoke-virtual {p0, v3}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->p:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/DataManager;->getCurDay()Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->r:Lcn/com/smartdevices/bracelet/model/SportDay;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->r:Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/com/smartdevices/bracelet/model/SportDay;->formatStringDay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->time:Ljava/lang/String;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepDeepTime()I

    move-result v1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepTime()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepStartDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->getSleepStopDate()Ljava/util/Date;

    move-result-object v0

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const v6, 0x7f0c0161

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    div-int/lit8 v8, v1, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    div-int/lit8 v1, v3, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v11

    const/4 v1, 0x3

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x4

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x5

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {p0, v6, v7}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->description:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    if-ne p1, v9, :cond_5

    new-instance v2, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v2}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>()V

    const-string v1, "DynamicView"

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->w:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Lcn/com/smartdevices/bracelet/model/ShareData;->setType(I)V

    invoke-virtual {p0, v5}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->J:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    const v1, 0x7f0c0111

    new-array v4, v9, [Ljava/lang/Object;

    const v5, 0x7f0c001d

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->x:I

    invoke-static {v7}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->y:I

    invoke-static {v7}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatTime(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v1, v4}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->A:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->content:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->contentUnit:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->B:I

    invoke-static {v1, v4}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatDistance(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v1, v10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->description:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/com/smartdevices/bracelet/model/SportDay;->formatStringDay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->time:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, v5}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    const v0, 0x7f0c01b7

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v5}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getStepsInfo()Lcn/com/smartdevices/bracelet/analysis/StepsInfo;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;-><init>()V

    :goto_3
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getCalories()I

    move-result v1

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getDaySportGoalSteps()I

    move-result v2

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getDistance()I

    move-result v5

    invoke-static {v4, v5}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->formatDistance(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v4, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v4, v9

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c0158

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-virtual {p0, v5, v6}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v4

    if-le v2, v4, :cond_4

    new-instance v2, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v2, v9}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>(I)V

    const v4, 0x7f0c0157

    invoke-virtual {p0, v4}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c0091

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->content:Ljava/lang/String;

    iput-object v1, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->description:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->contentUnit:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getStepsInfo()Lcn/com/smartdevices/bracelet/analysis/StepsInfo;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    new-instance v2, Lcn/com/smartdevices/bracelet/model/ShareData;

    invoke-direct {v2, v10}, Lcn/com/smartdevices/bracelet/model/ShareData;-><init>(I)V

    const v4, 0x7f0c0155

    invoke-virtual {p0, v4}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/com/smartdevices/bracelet/model/ShareData;->title:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c0090

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->q:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->E:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->E:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->setScrollable(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->H:Z

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    if-ne v0, v4, :cond_2

    iput v2, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    :cond_1
    :goto_1
    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    invoke-direct {p0, v0, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(IZ)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    if-ne v0, v2, :cond_1

    iput v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    goto :goto_1
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;I)V
    .locals 1

    const v0, 0x7f0c0112

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(I)V

    return-void
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->s:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-void
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->t:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-object v0
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->t:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-void
.end method

.method private static d(I)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    return-object v1

    :cond_0
    int-to-long v3, p0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->u:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-object v0
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/model/SportDay;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->u:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-void
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Lcn/com/smartdevices/bracelet/model/SportDay;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->s:Lcn/com/smartdevices/bracelet/model/SportDay;

    return-object v0
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;Lcn/com/smartdevices/bracelet/model/SportDay;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->mon:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcn/com/smartdevices/bracelet/model/SportDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    return-object v0
.end method

.method static synthetic h(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    return v0
.end method

.method static synthetic i(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->A:I

    return v0
.end method

.method static synthetic m(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->z:I

    return v0
.end method

.method static synthetic n(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->B:I

    return v0
.end method

.method static synthetic o(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->x:I

    return v0
.end method

.method static synthetic q(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->y:I

    return v0
.end method

.method static synthetic r(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->E:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic s(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->K:I

    return v0
.end method

.method static synthetic v(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->L:I

    return v0
.end method

.method static synthetic w(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic x(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic y(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->G:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic z(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->H:Z

    return v0
.end method


# virtual methods
.method protected formatTime(II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-string v0, "00:00"

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xa

    if-ge p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected formatTimeHourMin(I)[Ljava/lang/String;
    .locals 4

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v1, p1, 0x3c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    if-lez v0, :cond_0

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    :cond_0
    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f07002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b:Landroid/view/View;

    const v0, 0x7f07002e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->d:Landroid/widget/TextView;

    const v0, 0x7f07009e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->e:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->g:Landroid/view/View;

    const v0, 0x7f0700ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->h:Landroid/view/View;

    const v0, 0x7f0700a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->i:Landroid/view/View;

    const v0, 0x7f0700a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->j:Landroid/view/View;

    const v0, 0x7f07009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    const v0, 0x7f07009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f0700b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->m:Landroid/view/View;

    const v0, 0x7f0700b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->n:Landroid/view/View;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/M;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/M;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v0, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/chart/data/AsyncChartDataLoader;-><init>()V

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/P;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/P;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)V

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader;->setLoadCallback(Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader$LoadCallback;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->setDataLoader(Lcn/com/smartdevices/bracelet/chart/data/ChartDataLoader;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0, v4}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->setScrollable(Z)V

    const-string v0, "DynamicView"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0, v3}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->setScrollable(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->attach()V

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/L;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/L;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;)V

    sput-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->sRefreshHander:Landroid/os/Handler;

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    invoke-direct {p0, v0, v4}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(IZ)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    const-string v0, "RefCompleteGoal"

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b(I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x4

    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->b(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->E:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->E:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->setScrollable(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->H:Z

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    if-ne v0, v3, :cond_3

    iput v2, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    :cond_2
    :goto_1
    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    invoke-direct {p0, v0, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(IZ)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    if-ne v0, v2, :cond_2

    iput v3, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->r:Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-direct {p0, v2, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(ILcn/com/smartdevices/bracelet/model/SportDay;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->r:Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-direct {p0, v3, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(ILcn/com/smartdevices/bracelet/model/SportDay;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07002e -> :sswitch_0
        0x7f07009e -> :sswitch_1
        0x7f0700a0 -> :sswitch_2
        0x7f0700b4 -> :sswitch_3
        0x7f0700b7 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    const-string v1, "Dynamic.Detail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->v:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DynamicActivityMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->J:I

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->w:Ljava/lang/String;

    const-string v1, "DynamicStartTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->x:I

    const-string v1, "DynamicActivitySubTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->I:Ljava/lang/String;

    const-string v1, "DynamicEndTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->y:I

    const-string v1, "DynamicActiveTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->z:I

    const-string v1, "DynamicStep"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->A:I

    const-string v1, "DynamicStepDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->B:I

    :cond_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->C:I

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->D:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->sRefreshHander:Landroid/os/Handler;

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->k:Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/chart/DynamicDetailChartView;->detach()V

    return-void
.end method

.method public onEvent(Lcn/com/smartdevices/bracelet/eventbus/EventDynamicDetailSleepUserModified;)V
    .locals 2

    const-string v0, "Dynamic.Detail"

    const-string v1, "User Modified : Reload!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->sRefreshHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onEvent(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;)V
    .locals 3

    const-string v0, "Dynamic.Detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On BLE Status Changed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;)V

    iget v0, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->sRefreshHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const-string v0, "PageDynamicDetail"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endPage(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity;->mConnStatus:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->a(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;)V

    const-string v0, "PageDynamicDetail"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startPage(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->G:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->G:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicDetailFragment;->G:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method
