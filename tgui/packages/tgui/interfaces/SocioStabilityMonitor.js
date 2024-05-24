import { NtosWindow } from '../layouts';
import { ProgressBar } from '../components';
import { useBackend } from '../backend';

export const SocioStabilityMonitor = (props, context) => {
  const { data } = useBackend(context);
  const { stability_data } = data;
  return (
    <NtosWindow width={550} height={450}>
      <NtosWindow.Content>
        {'Display socio-stability level'}
        <ProgressBar value={stability_data / 100} />
      </NtosWindow.Content>
    </NtosWindow>
  );
};
