package kotlinx.coroutines.flow.internal;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: compiled from: Combine.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 6, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1", f = "Combine.kt", i = {0}, l = {129}, m = "invokeSuspend", n = {"second"}, s = {"L$0"})
final class CombineKt$zipImpl$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Flow<T1> $flow;
    final /* synthetic */ Flow<T2> $flow2;
    final /* synthetic */ FlowCollector<R> $this_unsafeFlow;
    final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> $transform;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CombineKt$zipImpl$1$1(FlowCollector<? super R> flowCollector, Flow<? extends T2> flow, Flow<? extends T1> flow2, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super CombineKt$zipImpl$1$1> continuation) {
        super(2, continuation);
        this.$this_unsafeFlow = flowCollector;
        this.$flow2 = flow;
        this.$flow = flow2;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CombineKt$zipImpl$1$1 combineKt$zipImpl$1$1 = new CombineKt$zipImpl$1$1(this.$this_unsafeFlow, this.$flow2, this.$flow, this.$transform, continuation);
        combineKt$zipImpl$1$1.L$0 = obj;
        return combineKt$zipImpl$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CombineKt$zipImpl$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) throws Throwable {
        ReceiveChannel second;
        CombineKt$zipImpl$1$1 combineKt$zipImpl$1$1;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    combineKt$zipImpl$1$1 = this;
                    CoroutineScope $this$coroutineScope = (CoroutineScope) combineKt$zipImpl$1$1.L$0;
                    ReceiveChannel second2 = ProduceKt.produce$default($this$coroutineScope, null, 0, new CombineKt$zipImpl$1$1$second$1(combineKt$zipImpl$1$1.$flow2, null), 3, null);
                    final CompletableJob collectJob = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
                    final FlowCollector<R> flowCollector = combineKt$zipImpl$1$1.$this_unsafeFlow;
                    ((SendChannel) second2).invokeOnClose(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                            invoke2(th);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Throwable it) {
                            if (collectJob.isActive()) {
                                collectJob.cancel((CancellationException) new AbortFlowException(flowCollector));
                            }
                        }
                    });
                    try {
                        CoroutineContext scopeContext = $this$coroutineScope.getCoroutineContext();
                        Object cnt = ThreadContextKt.threadContextElements(scopeContext);
                        CoroutineContext coroutineContextPlus = $this$coroutineScope.getCoroutineContext().plus(collectJob);
                        Unit unit = Unit.INSTANCE;
                        try {
                            combineKt$zipImpl$1$1.L$0 = second2;
                            combineKt$zipImpl$1$1.label = 1;
                            if (ChannelFlowKt.withContextUndispatched$default(coroutineContextPlus, unit, null, new AnonymousClass2(combineKt$zipImpl$1$1.$flow, scopeContext, cnt, second2, combineKt$zipImpl$1$1.$this_unsafeFlow, combineKt$zipImpl$1$1.$transform, null), combineKt$zipImpl$1$1, 4, null) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            second = second2;
                            ReceiveChannel.DefaultImpls.cancel$default(second, (CancellationException) null, 1, (Object) null);
                            return Unit.INSTANCE;
                        } catch (AbortFlowException e) {
                            e = e;
                            second = second2;
                            FlowExceptions_commonKt.checkOwnership(e, combineKt$zipImpl$1$1.$this_unsafeFlow);
                        } catch (Throwable th) {
                            th = th;
                            second = second2;
                            ReceiveChannel.DefaultImpls.cancel$default(second, (CancellationException) null, 1, (Object) null);
                            throw th;
                        }
                    } catch (AbortFlowException e2) {
                        e = e2;
                        second = second2;
                    } catch (Throwable th2) {
                        th = th2;
                        second = second2;
                    }
                    break;
                case 1:
                    combineKt$zipImpl$1$1 = this;
                    second = (ReceiveChannel) combineKt$zipImpl$1$1.L$0;
                    try {
                        ResultKt.throwOnFailure($result);
                        break;
                    } catch (AbortFlowException e3) {
                        e = e3;
                        FlowExceptions_commonKt.checkOwnership(e, combineKt$zipImpl$1$1.$this_unsafeFlow);
                    }
                    ReceiveChannel.DefaultImpls.cancel$default(second, (CancellationException) null, 1, (Object) null);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: Combine.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "it"}, k = 3, mv = {1, 6, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2", f = "Combine.kt", i = {}, l = {130}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {
        final /* synthetic */ Object $cnt;
        final /* synthetic */ Flow<T1> $flow;
        final /* synthetic */ CoroutineContext $scopeContext;
        final /* synthetic */ ReceiveChannel<Object> $second;
        final /* synthetic */ FlowCollector<R> $this_unsafeFlow;
        final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> $transform;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Flow<? extends T1> flow, CoroutineContext coroutineContext, Object obj, ReceiveChannel<? extends Object> receiveChannel, FlowCollector<? super R> flowCollector, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$flow = flow;
            this.$scopeContext = coroutineContext;
            this.$cnt = obj;
            this.$second = receiveChannel;
            this.$this_unsafeFlow = flowCollector;
            this.$transform = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$flow, this.$scopeContext, this.$cnt, this.$second, this.$this_unsafeFlow, this.$transform, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Unit unit, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: Combine.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
        static final class AnonymousClass1<T> implements FlowCollector, SuspendFunction {
            final /* synthetic */ Object $cnt;
            final /* synthetic */ CoroutineContext $scopeContext;
            final /* synthetic */ ReceiveChannel<Object> $second;
            final /* synthetic */ FlowCollector<R> $this_unsafeFlow;
            final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> $transform;

            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(CoroutineContext coroutineContext, Object obj, ReceiveChannel<? extends Object> receiveChannel, FlowCollector<? super R> flowCollector, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
                this.$scopeContext = coroutineContext;
                this.$cnt = obj;
                this.$second = receiveChannel;
                this.$this_unsafeFlow = flowCollector;
                this.$transform = function3;
            }

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: Combine.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "it"}, k = 3, mv = {1, 6, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
            @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1", f = "Combine.kt", i = {}, l = {132, 135, 135}, m = "invokeSuspend", n = {}, s = {})
            static final class C00081 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {
                final /* synthetic */ ReceiveChannel<Object> $second;
                final /* synthetic */ FlowCollector<R> $this_unsafeFlow;
                final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> $transform;
                final /* synthetic */ T1 $value;
                Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00081(ReceiveChannel<? extends Object> receiveChannel, FlowCollector<? super R> flowCollector, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, T1 t1, Continuation<? super C00081> continuation) {
                    super(2, continuation);
                    this.$second = receiveChannel;
                    this.$this_unsafeFlow = flowCollector;
                    this.$transform = function3;
                    this.$value = t1;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00081(this.$second, this.$this_unsafeFlow, this.$transform, this.$value, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Unit unit, Continuation<? super Unit> continuation) {
                    return ((C00081) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code duplicated, block: B:14:0x004b  */
                /* JADX WARN: Code duplicated, block: B:16:0x0052  */
                /* JADX WARN: Code duplicated, block: B:17:0x005a  */
                /* JADX WARN: Code duplicated, block: B:19:0x005c  */
                /* JADX WARN: Code duplicated, block: B:21:0x0069  */
                /* JADX WARN: Code duplicated, block: B:24:0x0075 A[RETURN] */
                /* JADX WARN: Code duplicated, block: B:25:0x0076  */
                /* JADX WARN: Code duplicated, block: B:28:0x0088 A[RETURN] */
                /* JADX WARN: Code duplicated, block: B:29:0x0089  */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r4v4, types: [kotlinx.coroutines.flow.FlowCollector] */
                /* JADX WARN: Type inference failed for: r4v5 */
                /* JADX WARN: Type inference failed for: r4v6 */
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    C00081 c00081;
                    Object objMo1643receiveCatchingJP2dKIU;
                    FlowCollector flowCollector;
                    Object obj2;
                    Object objInvoke;
                    C00081 c00082;
                    Throwable thM1654exceptionOrNullimpl;
                    ?? r4;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            c00081 = this;
                            c00081.label = 1;
                            objMo1643receiveCatchingJP2dKIU = c00081.$second.mo1643receiveCatchingJP2dKIU(c00081);
                            if (objMo1643receiveCatchingJP2dKIU == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            flowCollector = c00081.$this_unsafeFlow;
                            if (objMo1643receiveCatchingJP2dKIU instanceof ChannelResult.Failed) {
                                thM1654exceptionOrNullimpl = ChannelResult.m1654exceptionOrNullimpl(objMo1643receiveCatchingJP2dKIU);
                                if (thM1654exceptionOrNullimpl == null) {
                                    throw new AbortFlowException(flowCollector);
                                }
                                throw thM1654exceptionOrNullimpl;
                            }
                            obj2 = c00081.$this_unsafeFlow;
                            Function3 function3 = c00081.$transform;
                            Object obj3 = c00081.$value;
                            if (objMo1643receiveCatchingJP2dKIU == NullSurrogateKt.NULL) {
                                objMo1643receiveCatchingJP2dKIU = null;
                            }
                            c00081.L$0 = obj2;
                            c00081.label = 2;
                            objInvoke = function3.invoke(obj3, objMo1643receiveCatchingJP2dKIU, c00081);
                            if (objInvoke == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            obj = objInvoke;
                            c00082 = c00081;
                            r4 = obj2;
                            c00082.L$0 = null;
                            c00082.label = 3;
                            if (r4.emit(obj, c00082) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        case 1:
                            c00081 = this;
                            ResultKt.throwOnFailure(obj);
                            objMo1643receiveCatchingJP2dKIU = ((ChannelResult) obj).getHolder();
                            flowCollector = c00081.$this_unsafeFlow;
                            if (objMo1643receiveCatchingJP2dKIU instanceof ChannelResult.Failed) {
                                thM1654exceptionOrNullimpl = ChannelResult.m1654exceptionOrNullimpl(objMo1643receiveCatchingJP2dKIU);
                                if (thM1654exceptionOrNullimpl == null) {
                                    throw new AbortFlowException(flowCollector);
                                }
                                throw thM1654exceptionOrNullimpl;
                            }
                            obj2 = c00081.$this_unsafeFlow;
                            Function3 function4 = c00081.$transform;
                            Object obj4 = c00081.$value;
                            if (objMo1643receiveCatchingJP2dKIU == NullSurrogateKt.NULL) {
                                objMo1643receiveCatchingJP2dKIU = null;
                            }
                            c00081.L$0 = obj2;
                            c00081.label = 2;
                            objInvoke = function4.invoke(obj4, objMo1643receiveCatchingJP2dKIU, c00081);
                            if (objInvoke == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            obj = objInvoke;
                            c00082 = c00081;
                            r4 = obj2;
                            c00082.L$0 = null;
                            c00082.label = 3;
                            if (r4.emit(obj, c00082) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        case 2:
                            FlowCollector flowCollector2 = (FlowCollector) this.L$0;
                            ResultKt.throwOnFailure(obj);
                            r4 = flowCollector2;
                            c00082 = this;
                            c00082.L$0 = null;
                            c00082.label = 3;
                            if (r4.emit(obj, c00082) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        case 3:
                            ResultKt.throwOnFailure(obj);
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0014  */
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object emit(T1 t1, Continuation<? super Unit> continuation) throws Throwable {
                CombineKt$zipImpl$1$1$2$1$emit$1 combineKt$zipImpl$1$1$2$1$emit$1;
                if (continuation instanceof CombineKt$zipImpl$1$1$2$1$emit$1) {
                    combineKt$zipImpl$1$1$2$1$emit$1 = (CombineKt$zipImpl$1$1$2$1$emit$1) continuation;
                    if ((combineKt$zipImpl$1$1$2$1$emit$1.label & Integer.MIN_VALUE) != 0) {
                        combineKt$zipImpl$1$1$2$1$emit$1.label -= Integer.MIN_VALUE;
                    } else {
                        combineKt$zipImpl$1$1$2$1$emit$1 = new CombineKt$zipImpl$1$1$2$1$emit$1(this, continuation);
                    }
                } else {
                    combineKt$zipImpl$1$1$2$1$emit$1 = new CombineKt$zipImpl$1$1$2$1$emit$1(this, continuation);
                }
                Object $result = combineKt$zipImpl$1$1$2$1$emit$1.result;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (combineKt$zipImpl$1$1$2$1$emit$1.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        CoroutineContext coroutineContext = this.$scopeContext;
                        Unit unit = Unit.INSTANCE;
                        Object obj = this.$cnt;
                        C00081 c00081 = new C00081(this.$second, this.$this_unsafeFlow, this.$transform, t1, null);
                        combineKt$zipImpl$1$1$2$1$emit$1.label = 1;
                        if (ChannelFlowKt.withContextUndispatched(coroutineContext, unit, obj, c00081, combineKt$zipImpl$1$1$2$1$emit$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    Flow<T1> flow = this.$flow;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scopeContext, this.$cnt, this.$second, this.$this_unsafeFlow, this.$transform);
                    this.label = 1;
                    if (flow.collect(anonymousClass1, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure(obj);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }
}
