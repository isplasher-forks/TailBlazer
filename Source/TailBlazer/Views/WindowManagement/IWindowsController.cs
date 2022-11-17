using System;
using DynamicData;
using TailBlazer.Infrastructure;

namespace TailBlazer.Views.WindowManagement;

public interface IWindowsController
{
    IObservableCache<HeaderedView, Guid> Views { get; }

    void Register(HeaderedView item);
    void Remove(HeaderedView item);
}