.class final Lcom/tencent/stat/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/stat/StatStore;


# direct methods
.method constructor <init>(Lcom/tencent/stat/StatStore;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/q;->b:Lcom/tencent/stat/StatStore;

    iput p2, p0, Lcom/tencent/stat/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/stat/q;->b:Lcom/tencent/stat/StatStore;

    iget v0, v0, Lcom/tencent/stat/StatStore;->a:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/stat/StatStore;->a()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/stat/q;->b:Lcom/tencent/stat/StatStore;

    iget v2, v2, Lcom/tencent/stat/StatStore;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsent events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v0, p0, Lcom/tencent/stat/q;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/tencent/stat/StatConfig;->a()I

    move-result v1

    if-le v0, v1, :cond_4

    :cond_2
    invoke-static {}, Lcom/tencent/stat/StatConfig;->a()I

    move-result v0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/stat/q;->b:Lcom/tencent/stat/StatStore;

    iget v4, v0, Lcom/tencent/stat/StatStore;->a:I

    sub-int/2addr v4, v1

    iput v4, v0, Lcom/tencent/stat/StatStore;->a:I

    iget-object v0, p0, Lcom/tencent/stat/q;->b:Lcom/tencent/stat/StatStore;

    invoke-static {v0, v3, v1}, Lcom/tencent/stat/StatStore;->b(Lcom/tencent/stat/StatStore;Ljava/util/List;I)V

    invoke-static {}, Lcom/tencent/stat/StatStore;->a()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Peek "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unsent events."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/stat/q;->b:Lcom/tencent/stat/StatStore;

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/tencent/stat/StatStore;->a(Lcom/tencent/stat/StatStore;Ljava/util/List;I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/stat/t;

    iget-object v0, v0, Lcom/tencent/stat/t;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/tencent/stat/c;->b()Lcom/tencent/stat/c;

    move-result-object v0

    new-instance v4, Lcom/tencent/stat/r;

    invoke-direct {v4, p0, v3, v1}, Lcom/tencent/stat/r;-><init>(Lcom/tencent/stat/q;Ljava/util/List;I)V

    invoke-virtual {v0, v2, v4}, Lcom/tencent/stat/c;->b(Ljava/util/List;Lcom/tencent/stat/b;)V

    goto/16 :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method
