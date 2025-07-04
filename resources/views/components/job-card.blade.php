<x-card class="mb-4">
        <div class="mb-4 flex justify-between items-center">
        <h2 class="text-lg font-medium">{{ $job->title }}</h2>
        <div class="text-slate-500">&#8377;{{ number_format($job->salary)}}</div>
        </div>

        <div class="mb-4 flex items-center justify-between text-sm text-slate-500">
            <div class="flex space-x-4">
                <div>Company Name</div>
                <div>{{ $job->location }}</div>
            </div>
            <div class="flex flex-wrap gap-2">
                <x-tag>
                    {{ Str::ucfirst($job->experience)}}
                </x-tag>
                
                <x-tag>
                    {{( $job->category )}}
                </x-tag>
            </div>
        </div>
 {{$slot}}
    </x-card>